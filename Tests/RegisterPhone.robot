*** Settings ***
Library         AppiumLibrary
Library         AppiumLibrary
Resource        ../Resources/config.robot

*** Test Cases ***
Landing Page
    Open Sequiz App On Android
    Landing Page

GO TO PHONE REGISTER PAGE
    Verify Register Phone Field Is Displayed

INPUT REGISTER PHONE USER
    Register With User Phone            ${USER1-PHONE}[phone]

GO TO VERIFY PAGE
    Verify OTP Phone Register Page

