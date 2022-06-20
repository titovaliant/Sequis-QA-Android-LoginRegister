*** Settings ***
Library         AppiumLibrary
Resource        ../Resources/config.robot

*** Test Cases ***
Landing Page
    Open Sequiz App On Android
    Landing Page

Click Button
    Click Masuk Button

GO TO LOGIN EMAIL PAGE
    Verify Login Email Field Is Displayed

INPUT EMAIL
    Login With Email User         ${USER1-DETAILS}[email]             ${USER1-DETAILS}[password]

Verify LoginEmail Is Successful
    GO TO PROFILE PAGE
    VERIFY PROFILE PAGE

Logout Account
    DETAIL ACCOUNT
    Click the logout button

BACK TO LANDING PAGE
    GO TO LANDING PAGE

Close Application
    Close Sequiz App