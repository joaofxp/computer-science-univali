﻿using UnityEngine;
using System.Collections;
using System;

public class TouchEvents : MonoBehaviour
{

    // Update is called once per frame
    void Update()
    {
        if (Input.touchCount > 0)
        {
            Touch touch = Input.GetTouch(0);
            Vector3 touchPosition = Camera.main.ScreenToWorldPoint(touch.position);
            Vector2 touchPos = new Vector2(touchPosition.x, touchPosition.y);

            if (touch.phase == TouchPhase.Ended)
            {
                GameObject child = getClickedChild(touchPos);
                if (null != child && !isPositionAlreadyClicked(child))
                {
                    if (!GetComponent<Position>().isClicked)
                    {
                        GameObject scripts = GameObject.Find("Scripts");
                        GameController gameController = (GameController)scripts.GetComponent(typeof(GameController));
                        if (GetComponent<Position>().isClicked == false)
                        {
                            setPlayerXorCircleChoice(child);
                            if (isCurrentSelectionPlayersChoice(child))
                            {
                                renderPositionClicked(child);
                                gameController.IncrementPositionScore(name, gameController.playerBoard);
                            }
                            // int aiPosition = gameController.PlayAiTurn(child.gameObject);
                            // gameController.IncrementPositionScore(gameController.boardIntegerStringMapper[aiPosition], gameController.opponentBoard);
                            // gameController.CheckFimDeJogo();
                        }
                    }
                    
                }
            }
        }
    }

    private GameObject getClickedChild(Vector2 touchPos)
    {
        foreach(Transform child in gameObject.transform)
        {
            if (child.GetComponent<PolygonCollider2D>().OverlapPoint(touchPos))
                return child.gameObject;
        }
        return null;
    }

    private bool isPositionAlreadyClicked(GameObject child)
    {
        return child.GetComponent<ColorControl>().InvisibleColor.ToString().Equals(child.GetComponent<ColorControl>().GetCor().ToString());
    }

    private void setPlayerXorCircleChoice(GameObject child)
    {
        if (GameController.playersChoice == "")
        {
            GameController.playersChoice = child.name;
            child.GetComponent<ColorControl>().ClearBoardOfNonePlayerAvailableChoices();
        }
    }

    private bool isCurrentSelectionPlayersChoice(GameObject child)
    {
        return GameController.playersChoice == child.name;
    }

    public void renderPositionClicked(GameObject child)
    {
        child.GetComponent<ColorControl>().SetCor(child.GetComponent<ColorControl>().BaseColor);
        GetComponent<Position>().isClicked = true;
    }
}
