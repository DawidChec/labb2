*** Settings ***

Documentation   Information about websites buttons
Resource  ../Resources/keywords.robot
Resource  ../Resources/variables.robot
Library  SeleniumLibrary
Library  DateTime
Suite Setup  Begin Web Test
Suite Teardown  End Web Test

*** Test Cases ***

Iformation About "Confirm Booking"
    [Documentation]  Once accesing the start page; being able to create an user account
    [Tags]  Account
    Go to Web Page
    Creating A User

User Can Use Header-button
    [Documentation]  Once accesing the car-booking page; being able to go back to start page with Header-button
    [Tags]  Header
    Go to Web Page
    Using Header-button






