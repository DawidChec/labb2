*** Settings ***
Documentation   Information about websites buttons
Resource  ../Resources/keywords.robot
Library  SeleniumLibrary
Library  DateTime
Suite Setup  Begin Web Test
Suite Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome
${URL}  http://rental10.infotiv.net/
${current}

*** Test Cases ***
User Can Press Reset Button
    [Documentation]  Reset Button Works
    [Tags]  Date
    Go to Web Page
    Verify Page Loaded
    Choose Date
    Verify Page Loaded
    Press Reset Button

User Can Press Header button
    [Documentation]  Header Button Works
    [Tags]  Header
    Go to Web Page
    Verify Page Loaded
    Press Continue Button
    Car Page Shuold be Open
    Press Header Button
