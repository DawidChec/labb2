*** Settings ***
Documentation   Information about accesing the website and using "reset button"
Library  SeleniumLibrary
Test Setup  Begin Web Test
Test Teardown  End Web Test
*** Variables ***
${BROWSER}  chrome
${URL}  http://rental10.infotiv.net/
${SEARCH_TERM}  0320
*** Keywords ***
Begin Web Test
    Open Browser    about:blank  ${BROWSER}
Go to Web Page
    Go to  ${URL}
Verify Page Loaded
    Wait Until Page Contains  When do you want to make your trip?
Choose date
    Input Text  //*[@id="start"]  ${SEARCH_TERM}
Press Reset Button
    Press Keys  //*[@id="reset"]  RETURN
End Web Test
    Close Browser

*** Test Cases ***
User can Acces Website and use Reset button
    [Documentation]  Information about accesing the website and using "reset button"
    [Tags]  Test 1
    Go to Web Page
    Choose date
    Press Reset Button

User Can Go back to Start Page while booking a car
    [Documentation]  This is infomrmation about "Header" button.
    [Tags]  Test 2
    Go to Web Page
    Press Reset Button