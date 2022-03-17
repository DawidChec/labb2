Begin Web Test
    Open Browser    about:blank  ${BROWSER}
Go to Web Page
    Go to  ${URL}
Verify Page Loaded
    Wait Until Page Contains  When do you want to make your trip?
Choose Date
    Input Text  //*[@id="start"]  ${SELECT_DATE}
Press Reset Button
    Press Keys  //*[@id="reset"]  RETURN
Press Continue Button
    Press Keys  //*[@id="continue"]  RETURN
Press Header Button
    Press Keys  //*[@id="title"]  RETURN
Car Page Shuold be Open
    Wait Until Page Contains  What would you like to drive?
End Web Test
    Close Browser