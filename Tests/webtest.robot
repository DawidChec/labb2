*** Settings ***
Documentation   Information about "reset button"
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser    about:blank  chrome
Go to Web Page
    Go to  http://rental10.infotiv.net/
    Wait Until Page Contains  When do you want to make your trip?
Choose date
    Input Text  //*[@id="start"]  0320
Press Reset Button
    Press Keys  //*[@id="reset"]  RETURN
    Wait Until Page Contains  When do you want to make your trip?
End Web Test
    Close Browser

*** Test Cases ***
User can Acces Website and use Reset button
    [Documentation]  This is information about if user can acces website
    [Tags]  Test 1
    Begin Web Test
    Go to Web Page
    Choose date
    Press Reset Button
    End Web Test