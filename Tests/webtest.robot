*** Settings ***
Documentation   Information about "reset button"
Library  SeleniumLibrary

*** Test Cases ***
User can Acces Website
    [Documentation]  This is information about if user can acces website
    [Tags]  Test 1
    Open Browser    about:blank  chrome
    Go to  http://rental10.infotiv.net/
    Wait Until Page Contains  When do you want to make your trip?
    Input Text  //*[@id="start"]  0320
    Wait Until Page Contains  When do you want to make your trip?
    Press Keys  //*[@id="reset"]
    Wait Until Page Contains  When do you want to make your trip?
    Close Browser
