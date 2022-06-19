*** Settings ***
Library         AppiumLibrary
Resource        ../Resources/config.robot

*** Test Cases ***
Landing Page
    Open Sequiz App On Android
    Landing Page

Click Gmail Button
    Click Gmail Button

Choose Gmail Account
    Verify Gmail Popup Is Displayed
    Choose Gmail Account

Verify Login Gmail Is Successful
    GO TO PROFILE PAGE
    VERIFY PROFILE PAGE