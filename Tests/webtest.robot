*** Settings ***

Documentation   Information about websites buttons
Resource  ../Resources/keywords.robot
Library  SeleniumLibrary
Suite Setup  Begin Web Test
Suite Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome
${URL}  http://rental10.infotiv.net/
${SELECT_DATE}  0320

*** Test Cases ***
User Can Press Reset Button
    [Documentation]  Reset Button Works
    [Tags]  Test 1
    Go to Web Page
    Verify Page Loaded
    Choose Date
    Verify Page Loaded
    Press Reset Button

User Can Press Header button
    [Documentation]  Header Button Works
    [Tags]  Test 2
    Go to Web Page
    Verify Page Loaded
    Press Continue Button
    Car Page Shuold be Open
    Press Header Button
