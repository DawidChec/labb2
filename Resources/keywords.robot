*** Keywords ***
Begin Web Test
    Open Browser    about:blank  ${BROWSER}
Go to Web Page
    Go to  ${URL}
Check Date On Page Start
    ${date}=  Get Current Date  result_format=%Y-%m-%d
    ${attr}=  Get Element Attribute  //*[@id="start"] value
    ${infotiv_date}=  Convert Date  ${attr}  result_format=%Y-%m-%d
    Should BE Equal  ${date}  ${infotiv_date}
Verify Start Page Loaded
    Wait Until Page Contains  When do you want to make your trip?
Choose Date
    Input Text  id:start  ${current}
Press Reset Button
    Press Keys  id:reset  RETURN
Press Continue Button
    Press Keys  id:continue  RETURN
Press Header Button
    Press Keys  id:title  RETURN
Car Page Shuold be Open
    Wait Until Page Contains  What would you like to drive?
End Web Test
    Close Browser