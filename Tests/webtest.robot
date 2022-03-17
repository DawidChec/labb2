*** Settings ***
Documentation   Information about accesing the website and using "reset button"
Resource  ../Resources/keywords.robot
Library  SeleniumLibrary
Suite Setup  Begin Web Test
Suite Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome
${URL}  http://rental10.infotiv.net/
${SELECT_DATE}  0320

*** Test Cases ***
User Can Acces Website
    [Documentation]  Rest Button Works
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