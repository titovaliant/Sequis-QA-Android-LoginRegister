*** Settings ***
Library         AppiumLibrary
Resource        ../Resources/config.robot

*** Test Cases ***
Landing Page
    Open Sequiz App On Android
    Landing Page

Click Facebook Button
    Click Facebook Button

Navigate to Facebook Page
    Wait Facebook Page Displayed

Login Button
    Click Continue FB

Verify Login FB Is Successful
    GO TO PROFILE PAGE
    VERIFY PROFILE PAGE

Logout Account
    DETAIL ACCOUNT
    Click the logout button

BACK TO LANDING PAGE
    GO TO LANDING PAGE
    
Close Application
    Close Sequiz App