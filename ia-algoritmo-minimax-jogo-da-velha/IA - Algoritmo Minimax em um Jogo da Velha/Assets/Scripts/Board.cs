using System.Collections;

public class Board : IEnumerator, IEnumerable
{

    private BoardPositionChoice[] gameBoard;
    int boardPosition = -1;

    public Board(int size)
    {
        gameBoard = new BoardPositionChoice[size];
    }

    public IEnumerator GetEnumerator()
    {
        return (IEnumerator) this;
    }

    public bool MoveNext()
    {
        boardPosition++;
        return boardPosition < gameBoard.Length;
    }

    public bool isBoardPositionEmpty()
    {
        return gameBoard[boardPosition] == 0;
    }

    public void Reset()
    {
        boardPosition = 0;
    }

    public object Current
    {
        get { return gameBoard[boardPosition]; }
    }
}