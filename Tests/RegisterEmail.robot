*** Settings ***
Library         AppiumLibrary
Resource        ../Resources/config.robot

*** Test Cases ***
Landing Page
    Open Sequiz App On Android
    Landing Page

GO TO EMAIL REGISTER PAGE
    Verify Register Email Field Is Displayed

INPUT REGISTER EMAIL USER
    Register With Email User       ${USER3-DETAILS}[email]

GO TO VERIFY PAGE
    Verify OTP Email Register Page