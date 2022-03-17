*** Settings ***
Documentation   Information about accesing the website and using "reset button"
Library  SeleniumLibrary
Test Setup  Begin Web Test
Test Teardown  End Web Test
*** Keywords ***
Begin Web Test
    Open Browser    about:blank  chrome
Go to Web Page
    Go to  http://rental10.infotiv.net/
Verify Page Loaded
    Wait Until Page Contains  When do you want to make your trip?
Choose date
    Input Text  //*[@id="start"]  0320
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