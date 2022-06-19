*** Settings ***
Library         AppiumLibrary
Resource        ../Resources/config.robot

*** Test Cases ***
Landing Page
    Open Sequiz App On Android
    Landing Page

Click Button
    Click Masuk Button

GO TO LOGIN PHONE PAGE
    Verify Login Phone Field Is Displayed

INPUT Phone
    Login With Phone User         ${USER2-PHONE}[phone]             ${USER2-PHONE}[password]

Verify LoginPhone Is Successful
    GO TO PROFILE PAGE
    VERIFY PROFILE PAGE