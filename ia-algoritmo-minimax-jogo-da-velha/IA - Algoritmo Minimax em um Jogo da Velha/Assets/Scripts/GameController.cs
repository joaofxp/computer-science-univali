using UnityEngine;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Runtime.InteropServices;

public class GameController : MonoBehaviour
{
    MiniMax minimaxAlgoritmo = new MiniMax();
    public GameObject[] casasArray;
    public static string playersChoice = "";
    private Dictionary<string, bool> gameBoard;
    public Dictionary<BoardPossibleWinScenarios, int> playerBoard = new Dictionary<BoardPossibleWinScenarios, int>();
    public Dictionary<BoardPossibleWinScenarios, int> opponentBoard = new Dictionary<BoardPossibleWinScenarios, int>();
    public enum BoardPossibleWinScenarios { firstRow, secondRow, thirdRow, firstColumn, secondColumn, thirdColumn, forwardDiagonal, backDiagonal };

    [DllImport("__Internal")]
    private static extern void PlayerWin();

    [DllImport("__Internal")]
    private static extern void Tie();
    
    [DllImport("__Internal")]
    private static extern void AIWin();

    private Dictionary<string, int> boardStringIntegerMapper = new Dictionary<string, int> 
    {
        { "[0,0]", 0 }, { "[0,1]", 1 }, { "[0,2]", 2 },
        { "[1,0]", 3 }, { "[1,1]", 4 }, { "[1,2]", 5 },
        { "[2,0]", 6 }, { "[2,1]", 7 }, { "[2,2]", 8 },
    };

    public Dictionary<int, string> boardIntegerStringMapper = new Dictionary<int, string>
    {
        {0, "[0,0]"}, {1, "[0,1]"}, {2,  "[0,2]" },
        {3, "[1,0]" }, {4, "[1,1]" }, {5, "[1,2]" },
        {6, "[2,0]" }, {7, "[2,1]" }, {8, "[2,2]" },
    };

    void Awake()
    {
        IniciarTabuleiro();
        InicializarPlayerScore();

        // if (Application.loadedLevel.Equals(1)) {
        //     RolarJogadorInicial();
        // }
    }

    private void IniciarTabuleiro()
    {
        casasArray = GameObject.FindGameObjectsWithTag("Casa");
    }

    private void RolarJogadorInicial()
    {
        IEnumerable<int> playerRange;
        int randomInt;
        GenerateRandomNumber(out playerRange, out randomInt);

        if (playerRange.Contains(randomInt))
        {
            Debug.Log("player");
        }
        else
        {
            Debug.Log("AI");
        }
    }

    private static void GenerateRandomNumber(out IEnumerable<int> playerRange, out int randomInt)
    {
        playerRange = Enumerable.Range(0, 50);
        IEnumerable<int> aiRange = Enumerable.Range(51, 49);
        System.Random r = new System.Random();
        randomInt = r.Next(0, 100);
    }

    public void InicializarPlayerScore()
    {
        int score = 0;
        foreach (BoardPossibleWinScenarios boardPossibleWinScenario in Enum.GetValues(typeof(BoardPossibleWinScenarios)))
        {
            playerBoard.Add(boardPossibleWinScenario, score);
            opponentBoard.Add(boardPossibleWinScenario, score);
        }
    }

    public bool CheckFimDeJogo()
    {
        bool CheckFimDeJogo = false;

        int isTie = 0;
        foreach (GameObject o in casasArray)
        {
            Position parentPosition = o.GetComponent<Position>();
            isTie = parentPosition.isClicked ? isTie + 1 : isTie;
        }
        if (isTie == 9)
        {
            Debug.Log("tie"); 
            Tie();
            CheckFimDeJogo = true;

        }
        if (CheckFimDeJogo)
        {
            Invoke("ReiniciarJogo", 2.0f);
            Debug.Log("FIM DE JOGO");
            return true;
        }

        foreach (KeyValuePair<BoardPossibleWinScenarios, int> boardPosition in playerBoard)
        {
            if (playerBoard[boardPosition.Key].Equals(3))
            {
                Debug.Log("player win");
                PlayerWin();
                CheckFimDeJogo = true;
            }
        }

        if (CheckFimDeJogo)
        {
            Invoke("ReiniciarJogo", 2.0f);
            Debug.Log("FIM DE JOGO");
            return true;
        }

        foreach (KeyValuePair<BoardPossibleWinScenarios, int> boardPosition in opponentBoard)
        {
            if (opponentBoard[boardPosition.Key].Equals(3))
            {
                Debug.Log("opponent win");
                AIWin();
                CheckFimDeJogo = true;
            }
        }
        
        if (CheckFimDeJogo)
        {
            Invoke("ReiniciarJogo", 2.0f);
            Debug.Log("FIM DE JOGO");
            return true;
        }
        else
            return false;
    }

    public void ReiniciarJogo()
    {
        Debug.Log("restarting game");
        playersChoice = "";

        //reset wins
        foreach (BoardPossibleWinScenarios boardPossibleWinScenario in Enum.GetValues(typeof(BoardPossibleWinScenarios)))
        {
            playerBoard[boardPossibleWinScenario] = 0;
            opponentBoard[boardPossibleWinScenario] = 0;
        }

        //reset gameobjects
        for (int i = 0; i < this.casasArray.Length; i++)
        {
            casasArray[i].GetComponent<Position>().isClicked = false;
            for (int j = 0; j < this.casasArray[i].transform.childCount; j++)
            {
                GameObject xOrCircle = this.casasArray[i].transform.GetChild(j).gameObject;
                xOrCircle.GetComponent<ColorControl>().SetCor(xOrCircle.GetComponent<ColorControl>().AlphaColor);
            }
        }
    }

    public void IncrementPositionScore(string positionToIncrement, Dictionary<BoardPossibleWinScenarios, int> board)
    {
        switch (positionToIncrement)
        {
            case "[0,0]":
                board[BoardPossibleWinScenarios.firstRow]++;
                board[BoardPossibleWinScenarios.firstColumn]++;
                board[BoardPossibleWinScenarios.backDiagonal]++;
                break;
            case "[0,1]":
                board[BoardPossibleWinScenarios.firstRow]++;
                board[BoardPossibleWinScenarios.secondColumn]++;
                break;
            case "[0,2]":
                board[BoardPossibleWinScenarios.firstRow]++;
                board[BoardPossibleWinScenarios.thirdColumn]++;
                board[BoardPossibleWinScenarios.forwardDiagonal]++;
                break;
            case "[1,0]":
                board[BoardPossibleWinScenarios.secondRow]++;
                board[BoardPossibleWinScenarios.firstColumn]++;
                break;
            case "[1,1]":
                board[BoardPossibleWinScenarios.secondRow]++;
                board[BoardPossibleWinScenarios.secondColumn]++;
                board[BoardPossibleWinScenarios.forwardDiagonal]++;
                board[BoardPossibleWinScenarios.backDiagonal]++;
                break;
            case "[1,2]":
                board[BoardPossibleWinScenarios.secondRow]++;
                board[BoardPossibleWinScenarios.thirdColumn]++;
                break;
            case "[2,0]":
                board[BoardPossibleWinScenarios.thirdRow]++;
                board[BoardPossibleWinScenarios.firstColumn]++;
                board[BoardPossibleWinScenarios.forwardDiagonal]++;
                break;
            case "[2,1]":
                board[BoardPossibleWinScenarios.thirdRow]++;
                board[BoardPossibleWinScenarios.secondColumn]++;
                break;
            case "[2,2]":
                board[BoardPossibleWinScenarios.thirdRow]++;
                board[BoardPossibleWinScenarios.thirdColumn]++;
                board[BoardPossibleWinScenarios.backDiagonal]++;
                break;
        }
    }

    public int PlayAiTurn(GameObject gameObject)
    {
        int aiPlayChoice = GameController.playersChoice.Equals("X") ? -1 : 1;
        minimaxAlgoritmo.aiEscolha = aiPlayChoice;

        EndTurnPosition bestPositionToEndTurn = minimaxAlgoritmo.GetMelhorPosicao(aiPlayChoice, ConverterBoardParaInt(gameObject), 0);
        int newBestPositionToPick = bestPositionToEndTurn.position;

        foreach (GameObject boardPositions in this.casasArray)
        {
            foreach (KeyValuePair<string, int> integerStringMapperEntry in boardStringIntegerMapper)
            {
                if (integerStringMapperEntry.Key == boardPositions.name && integerStringMapperEntry.Value == newBestPositionToPick)
                {
                    if (GameController.playersChoice != boardPositions.transform.GetChild(0).gameObject.name)
                    {
                        gameObject.GetComponent<MouseEvents>().renderPositionClicked(boardPositions.transform.GetChild(0).gameObject);
                        gameObject.GetComponent<ColorControl>().RenderAiOtherChoiceInvisible(boardPositions);
                    }
                    else
                    {
                        gameObject.GetComponent<MouseEvents>().renderPositionClicked(boardPositions.transform.GetChild(1).gameObject);
                        gameObject.GetComponent<ColorControl>().RenderAiOtherChoiceInvisible(boardPositions);
                    }
                }
            }
        }
        return newBestPositionToPick;
    }

    private int[] ConverterBoardParaInt(GameObject gameObject)
    {
        int[] boardAsIntegers = new int[9];
        Color32 invisibleColor = gameObject.GetComponent<ColorControl>().InvisibleColor;

        foreach (GameObject position in this.casasArray)
        {
            foreach (KeyValuePair<string, int> integerStringMapperEntry in boardStringIntegerMapper)
            {
                if (integerStringMapperEntry.Key == position.name)
                {
                    if (!position.GetComponent<Position>().isClicked)
                    {
                        boardAsIntegers[integerStringMapperEntry.Value] = 0;
                    }
                    else
                    {
                        if (!position.transform.GetChild(0).GetComponent<ColorControl>().GetCor().Equals(invisibleColor) && position.transform.GetChild(0).gameObject.name == "X")
                        {
                            boardAsIntegers[integerStringMapperEntry.Value] = 1;

                        }
                        else
                        {
                            boardAsIntegers[integerStringMapperEntry.Value] = -1;
                        }
                    }
                }
            }
        }
        return boardAsIntegers;
    }

}
