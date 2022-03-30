*** Settings ***
Documentation   Information about websites buttons
Resource  ../Resources/keywords.robot
Library  SeleniumLibrary
Library  DateTime
Suite Setup  Begin Web Test
Suite Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome
${URL}  http://rental10.infotiv.net
${date} =  Get Current Date
${element_text}  Get Text
${infotiv_date}  convert into date

*** Test Cases ***
User Can Press Reset Button
    [Documentation]  Reset Button Works
    [Tags]  Date
    Go to Web Page
    Verify Page Loaded
    Check Date On Page Start
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
    Verify Start Page Loaded

