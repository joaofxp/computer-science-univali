using System;
using UnityEngine;

public class MiniMax
{
    public int aiEscolha;

    public EndTurnPosition GetMelhorPosicao(int calcularMelhorCaminho, int[] gameBoard, int nível)
    {
        int checkFimDeJogo = CheckFimDeJogo(gameBoard);
        if (tabuleiroCompleto(gameBoard) && checkFimDeJogo == 0)
        {
            return new EndTurnPosition(0);
        }
        else if (checkFimDeJogo == 10)
        {
            return new EndTurnPosition(10 - nível);
        }
        else if (checkFimDeJogo == -10)
        {
            return new EndTurnPosition(nível - 10);
        }
        nível++;
        EndTurnPosition levelBestPosition = CriarNoFolhaPorNivel(calcularMelhorCaminho);

        for (int boardPosition = 0; boardPosition < gameBoard.Length; boardPosition++)
        {
            if (gameBoard[boardPosition] == 0)
            {
                gameBoard[boardPosition] = calcularMelhorCaminho;
                //inverte o turno entre os jogadores, multiplicando por -1, clonando o tabuleiro (por parâmetro) para não refletir no mesmo nível de decisão do outro jogador
                EndTurnPosition newPosition = GetMelhorPosicao(calcularMelhorCaminho * -1, (int[])gameBoard.Clone(), nível);
                //oponente - minimizar resultado
                if (aiEscolha != calcularMelhorCaminho)
                {
                    if (newPosition.score <= levelBestPosition.score)
                    {
                        levelBestPosition.position = boardPosition;
                        levelBestPosition.score = newPosition.score;
                    }
                }
                else
                {
                    //AI - maximizar resultado
                    if (newPosition.score >= levelBestPosition.score)
                    {
                        levelBestPosition.position = boardPosition;
                        levelBestPosition.score = newPosition.score;
                    }
                }
                //limpa a seleção para nao atrapalhar  aproxima iteração do oponente (que é no mesmo nível de profundidade)
                gameBoard[boardPosition] = 0;
            }
        }
        return levelBestPosition;
    }

    private EndTurnPosition CriarNoFolhaPorNivel(int calcularMelhorCaminho)
    {
        EndTurnPosition levelBestPosition = new EndTurnPosition();
        if (aiEscolha != calcularMelhorCaminho)
        {
            levelBestPosition.score = int.MaxValue;
        }
        else
        {
            levelBestPosition.score = int.MinValue;
        }
        return levelBestPosition;
    }

    private bool tabuleiroCompleto(int[] gameBoard)
    {
        foreach (int gameNode in gameBoard)
        {
            if (gameNode == 0)
            {
                return false;
            }
        }
        return true;
    }

    private int CheckFimDeJogo(int[] gameBoard)
    {
        //win = 10, lose = -10, tie = 0
        //X == 1, O == -1

        int isWinRow = 0;
        int isWinForwardDiagonal = 0;
        int isWinBackDiagonal = 0;
        int rowNumber = 1;
        int rowSize = (int)Math.Sqrt(gameBoard.Length);
        int[] isWinColumnArr = new int[rowSize];
        int winCondition = CriarCondicaoVitoria(aiEscolha);
        int loseCondition = winCondition * -1;

        for (int i = 0; i < gameBoard.Length; i++)
        {
            rowNumber = ChecarNovaLinha(rowSize, i) ? ++rowNumber : rowNumber;
            isWinRow = ResetarCondicoesDeVitoria(isWinRow, rowSize, i);

            CalcularVitoriaPorColuna(gameBoard, rowSize, isWinColumnArr, i);
            isWinRow = CalcularVitoriaPorLinha(gameBoard, isWinRow, i);
            isWinBackDiagonal = CalcularVitoriaPorDiagonalTraseira(gameBoard, isWinBackDiagonal, rowNumber, rowSize, i);
            isWinForwardDiagonal = CalcularVitoriaPorDiagonalFrontal(gameBoard, isWinForwardDiagonal, rowNumber, rowSize, i);

            if (isWinForwardDiagonal == winCondition || isWinBackDiagonal == winCondition || isWinRow == winCondition || isWinColumnArr[i % rowSize] == winCondition)
            {
                return 10;
            }
            else if (isWinForwardDiagonal == loseCondition || isWinBackDiagonal == loseCondition || isWinRow == loseCondition || isWinColumnArr[i % rowSize] == loseCondition)
            {
                return -10;
            }
        }
        return 0;
    }

    private void CalcularVitoriaPorColuna(int[] gameBoard, int rowSize, int[] isWinColumnArr, int i)
    {
        isWinColumnArr[i % rowSize] += gameBoard[i];
    }

    private int CalcularVitoriaPorLinha(int[] gameBoard, int isWinRow, int i)
    {
        isWinRow += gameBoard[i];
        return isWinRow;
    }

    private int CalcularVitoriaPorDiagonalFrontal(int[] gameBoard, int isWinForwardDiagonal, int rowNumber, int rowSize, int i)
    {
        if (i != 0 && i == ((rowSize - 1) * rowNumber))
        {
            isWinForwardDiagonal += gameBoard[i];
        }
        return isWinForwardDiagonal;
    }

    private int CalcularVitoriaPorDiagonalTraseira(int[] gameBoard, int isWinBackDiagonal, int rowNumber, int rowSize, int i)
    {
        if ((i == ((rowSize + 1) * (rowNumber - 1))))
        {
            isWinBackDiagonal += gameBoard[i];
        }
        return isWinBackDiagonal;
    }

    private int ResetarCondicoesDeVitoria(int isWinRow, int rowSize, int i)
    {
        if (ChecarNovaLinha(rowSize, i))
        {
            isWinRow = 0;
        }
        return isWinRow;
    }

    private bool ChecarNovaLinha(int rowSize, int i)
    {
        return i != 0 && (i % rowSize) == 0;
    }

    private int CriarCondicaoVitoria(int calcularMelhorCaminho)
    {
        int win = 3;
        if (calcularMelhorCaminho == -1)
        {
            win *= calcularMelhorCaminho;
        }
        return win;
    }

}