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
    Input Email FB Address             ${USER2-DETAILS}[email]
    Input Password FB                  ${USER2-DETAILS}[password]

Login Button
    Click Login Button