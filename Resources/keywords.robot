
*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

Go to Web Page
    Go to  ${URL}
    Wait Until Page Contains  When do you want to make your trip?

Creating A User
    Wait Until Page Contains  When do you want to make your trip?
    Click Element  ${CREATEUSER}
    Input Text  ${NAME}  Dawid
    Input Text  ${LASTNAME}  Chec
    Input Text  ${PHONE}  0720361023
    Input Text  ${EMAIL}  dawid.chec@iths.se
    Input Text  ${CONFIRMEMAIL}  dawid.chec@iths.se
    Input Text  ${PASSWORD}  blablablabla
    Input Text  ${CONFIRMPASSWORD}  blablablabla
    Click Element  ${CREATECACCOUNT}
    Wait Until Page Contains  That Phone number is already taken



Using Header-button
    Wait Until Page Contains  When do you want to make your trip?
    Click Element  ${CONTINUE}
    Wait Until Page Contains  What would you like to drive?
    Click Element  ${CHOOSEMARK}
    Click Element  ${AUDI}
    Click Element  ${HEADERBUTTON}
    Wait Until Page Contains   When do you want to make your trip?

End Web Test
    Close Browser

