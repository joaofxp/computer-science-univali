using UnityEngine;

public class ColorControl : MonoBehaviour
{

    public Color32 BaseColor
    {
        get;
        set;
    }

    public Color32 AlphaColor
    {
        get;
        set;
    }

    public Color32 InvisibleColor
    {
        get;
        set;
    }

    public void SetCor(Color color)
    {
        gameObject.GetComponent<Renderer>().material.color = color;
    }

    public Color32 GetCor()
    {
        return gameObject.GetComponent<Renderer>().material.color;
    }

    private void Awake()
    {
        AlphaColor = new Color(1f, 1f, 1f, .3f);
        BaseColor = gameObject.GetComponent<Renderer>().material.color;
        InvisibleColor = new Color(0f, 0f, 0f, 0f);
        gameObject.GetComponent<Renderer>().material.color = AlphaColor;
    }

    public bool IsPositionInvisible()
    {
        Color32 positionCurrentColor = GetCor();
        Color32 invisibleColor = this.InvisibleColor;
        return positionCurrentColor.ToString().Equals(invisibleColor.ToString());
    }

    public void ClearBoardOfNonePlayerAvailableChoices()
    {
        GameObject scripts = GameObject.Find("GameController");
        GameController gameController = (GameController)scripts.GetComponent(typeof(GameController));
        for (int i = 0; i < gameController.casasArray.Length; i++)
        {
            for (int j = 0; j < gameController.casasArray[i].transform.childCount; j++)
            {
                GameObject xOrCircle = gameController.casasArray[i].transform.GetChild(j).gameObject;
                if (GameController.playersChoice != xOrCircle.name)
                {
                    xOrCircle.GetComponent<ColorControl>().SetCor(this.InvisibleColor);
                }
            }
        }
    }

    public void RenderAiOtherChoiceInvisible(GameObject position)
    {
        Color32 xOrCircleColor;
        for (int i = 0; i < position.transform.childCount; i++)
        {
            GameObject xOrCircle = (GameObject)position.transform.GetChild(i).gameObject;
            xOrCircleColor = xOrCircle.GetComponent<ColorControl>().GetCor();
            if (xOrCircleColor.ToString().Equals(AlphaColor.ToString()))
            {
                xOrCircle.GetComponent<ColorControl>().SetCor(InvisibleColor);
            }
        }
    }

}
