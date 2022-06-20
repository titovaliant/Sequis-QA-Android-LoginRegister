*** Settings ***
Library         AppiumLibrary
Resource        ../Resources/password.robot

*** Variables ***
#Test Variables
&{USER1-DETAILS}             email=valiantartwear@gmail.com           password=${PASSWORD}
&{USER2-DETAILS}             email=valiantartwear@gmail.com           password=${PASSWORD2}
&{USER3-DETAILS}             email=titoto@gmail.com                   password=${PASSWORD2}
&{USER1-PHONE}               phone=83830602478                        password=${PASSWORD}
&{USER2-PHONE}               phone=87855315005                        password=${PASSWORD}

#Landing Page
${LANDING-SplashLogo}           id=com.sequis.neu.polisku:id/splashLogo
${LANDING-SequizLogo}           id=com.sequis.neu.polisku:id/sequisLogo
${LANDING-DAFTAR-BUTTON}        id=com.sequis.neu.polisku:id/register
${LANDING-LOGIN-BUTTON}         id=com.sequis.neu.polisku:id/daftar_sekarang
${LANDING-GMAIL-BUTTON}         id=com.sequis.neu.polisku:id/containerGoogle
${LANDING-FACEBOOK-BUTTON}      id=com.sequis.neu.polisku:id/containerFacebook
${BACK-BUTTON}                  //android.widget.ImageButton

#Login Page
${Login-EMAIL-TAB}                 id=com.sequis.neu.polisku:id/background
${Login-EMAIL-FIELD}                //android.widget.EditText[@text='Alamat email']

${Login-PASSWORD-FIELD}             //android.widget.EditText[@text='Password']
${Login-SUMBIT-BUTTON}             id=com.sequis.neu.polisku:id/daftar

${Login-Masuk-TEXT}                //android.widget.TextView[@text='Masuk']
${Login-PHONE-FIELD}               //android.widget.EditText[@text='No handphone']

${Login-GMAIL-POPUP}               //android.widget.TextView[@text='Choose an account']
${Login-GMAIL-ACCOUNT}             id=com.google.android.gms:id/container

# ${Login-FACEBOOK-POPUP}            //android.view.View[@text='Log in to your Facebook account to connect to Sequis']
${Login-FACEBOOK-POPUP}             //android.view.View[@text="Log in With Facebook"]
${Login-SUMBITFB-BUTTON}            //android.widget.Button[@text='Log In']
${Login-EMAILFB-FIELD}              //android.widget.EditText
${Login-PASSWORDFB-FIELD}           //android.widget.EditText[@text="Facebook password"]
${Login-CONTINUEFB-BUTTON}          //android.widget.Button[@text="Continue"]

#REGISTER Page
${REGISTER-DAFTAR-TEXT}            //android.widget.TextView[@text='Daftar']
${REGISTER-PHONE-FIELD}            id=com.sequis.neu.polisku:id/parentPhoneView
${REGISTER-PHONE_NUMBER-FIELD}     //android.widget.EditText[@text='No handphone']
${REGISTER-LANJUT-BUTTON}          id=com.sequis.neu.polisku:id/daftar
${REGISTER-VERIFIKASI}             //android.widget.TextView[@text='Verifikasi']
${REGISTER-EMAIL-TAB}              //android.widget.TextView[@text='Email']
${REGISTER-EMAIL-FIELD}            //android.widget.EditText[@text='Alamat email']
${REGISTER-EMAIL-TEXT}              id=com.sequis.neu.polisku:id/parentEmailView

#Akun/Profile Page
${MAIN-PIN-IMAGE}                   id=com.sequis.neu.polisku:id/imagePin
${MAIN-PIN-PAGE2}                   id=com.sequis.neu.polisku:id/tingkatkanLabel
${MAIN-PIN-PAGE3}                   //android.widget.TextView[@text="Tingkatkan Keamanan Akun]
${MAIN-PINCLOSE-BUTTON}             id=com.sequis.neu.polisku:id/close
${MAIN-ICON-INBOX}                  id=com.sequis.neu.polisku:id/inbox
${MAIN-ICON-SETTINGS}               id=com.sequis.neu.polisku:id/settings
${MAIN-SIGNOUT-BUTTON}              //android.widget.Button[@text='SIGN OUT']
${MAIN-SIGNOUT-BUTTON2}             id=android:id/button1
${MAIN-SETTINGS-BUTTON}             id=com.sequis.neu.polisku:id/settings
${MAIN-DETAIL-ACCOUNT}              //android.widget.TextView[@text='Akun App']
${MAIN-LIHATAKUN-BUTTON}            id=com.sequis.neu.polisku:id/lihatAkun
${MAIN-LOGOUT-POPUP}                //android.widget.TextView[@text='Anda Yakin Mau Keluar?']



*** Keywords ***

Open Sequiz App On Android
    Open Application  http://localhost:4723/wd/hub  automationName=UIAutomator2
    ...  platformName=Android      deviceName=emulator-5554
    ...  appPackage=com.sequis.neu.polisku    appActivity=com.sequis.neu.polisku.SplashScreenActivity

Close Sequiz App
    Close Application

Landing Page
    Wait Until Element Is Visible                   ${LANDING-SplashLogo}        timeout=20
    Wait Until Element Is Visible                   ${LANDING-SequizLogo}        timeout=20

Back to Landing Page
    Click Element                                   ${BACK-BUTTON}


#   Login With Phone User ====================================================================

Login With Phone User
    [Arguments]             ${PHONE}        ${USERPASSWORD}
    Input User Phone                        ${PHONE}
    Input User Password                     ${USERPASSWORD}
    Submit Login
    Verify Login Is Successful

Input User Phone
    [Arguments]             ${PHONE}
    Input Text              ${Login-PHONE-FIELD}         ${PHONE}

Verify Login Phone Field Is Displayed

    Wait Until Page Contains Element                ${Login-Masuk-TEXT}          timeout=20
    Wait Until Page Contains Element                ${Login-PHONE-FIELD}         timeout=20

#   Login With Email User ====================================================================
Verify Login Email Field Is Displayed

    Wait Until Page Contains Element                ${Login-Masuk-TEXT}          timeout=20
    Click Element                                   ${Login-EMAIL-TAB}
    Wait Until Page Contains Element                ${Login-EMAIL-FIELD}         timeout=20

Login With Email User
    [Arguments]             ${EMAIL}        ${USERPASSWORD}
    Input User Email                        ${EMAIL}
    Input User Password                     ${USERPASSWORD}
    Submit Login
    Verify Login Is Successful

Input User Email
    [Arguments]             ${EMAIL}
    Input Text              ${Login-EMAIL-FIELD}         ${EMAIL}

Input User Password
    [Arguments]             ${USERPASSWORD}
    Input Text              ${Login-PASSWORD-FIELD}      ${USERPASSWORD}

Submit Login
    Click Element                                   ${Login-SUMBIT-BUTTON}

Verify Login Is Successful
    Wait Until Page Contains Element                ${MAIN-PIN-IMAGE}

Click Masuk Button
    Click Element                                   ${LANDING-LOGIN-BUTTON}

Logout With User
    Wait Until Page Contains Element                ${MAIN-ARTIKEL}
    Click Element                                   ${MAIN-HEADER-TITLE}
    Click the logout Button

#   Detail Account User ====================================================================

GO TO PROFILE PAGE
    Wait Until Element Is Visible                   ${MAIN-PIN-IMAGE}               timeout=20
    Click Element                                   ${MAIN-PINCLOSE-BUTTON}

VERIFY PROFILE PAGE
    Wait Until Page Contains Element                ${MAIN-ICON-INBOX}              timeout=20
    Wait Until Page Contains Element                ${MAIN-ICON-SETTINGS}

DETAIL ACCOUNT
    Click Element                                   ${MAIN-SETTINGS-BUTTON}
    Wait Until Element Is Visible                   ${MAIN-LIHATAKUN-BUTTON}          timeout=10
    Click Element                                   ${MAIN-LIHATAKUN-BUTTON}              
    Wait Until Element Is Visible                   ${MAIN-DETAIL-ACCOUNT}          timeout=10

Click the logout button
    Click Element                                   ${MAIN-SIGNOUT-BUTTON}
    Wait Until Element Is Visible                   ${MAIN-LOGOUT-POPUP}            timeout=10
    Click Element                                   ${MAIN-SIGNOUT-BUTTON2}

GO TO LANDING PAGE
    Wait Until Element Is Visible                   ${LANDING-SequizLogo}           timeout=20
    Wait Until Element Is Visible                   ${LANDING-GMAIL-BUTTON}         timeout=20

#  Login Gmail Button ============================================================================

Click Gmail Button
    Click Element                                   ${LANDING-GMAIL-BUTTON}

Choose Gmail Account
    Click Element                                   ${Login-GMAIL-ACCOUNT}

Verify Gmail Popup Is Displayed
    Wait Until Element Is Visible                   ${Login-GMAIL-POPUP}          timeout=20

#  Login Facebook Button ============================================================================
Click Facebook Button
    Click Element                                   ${LANDING-FACEBOOK-BUTTON}

Wait Facebook Page Displayed
    Wait Until Element Is Visible                   ${Login-FACEBOOK-POPUP}     timeout=20

Click Continue FB
    Click Element                                   ${Login-CONTINUEFB-BUTTON}

Input Email FB Address
    [Arguments]             ${EMAIL}
    Input Text              ${Login-EMAILFB-FIELD}            ${EMAIL}                                   

Input Password FB
    [Arguments]             ${PASSWORD}
    Input Text              ${Login-PASSWORDFB-FIELD}         ${PASSWORD} 

Click Login Button
    Click Element                                   ${Login-SUMBITFB-BUTTON}

#  Register  =====================================================================================
Verify Register Phone Field Is Displayed
    Click Element                                   ${LANDING-DAFTAR-BUTTON}
    Wait Until Page Contains Element                ${REGISTER-PHONE_NUMBER-FIELD}

Register With User Phone
    [Arguments]  ${USER-PHONE}
    Click Element                                   ${REGISTER-PHONE_NUMBER-FIELD}
    Input Text                                      ${REGISTER-PHONE_NUMBER-FIELD}      ${USER-PHONE}
    Submit Register

Submit Register
    Wait Until Element Is Visible                   ${REGISTER-LANJUT-BUTTON}
    Click Element                                   ${REGISTER-LANJUT-BUTTON}

Verify OTP Phone Register Page
    Wait Until Element Is Visible                   ${REGISTER-VERIFIKASI}         timeout=20

Verify Register Email Field Is Displayed
    Click Element                                   ${LANDING-DAFTAR-BUTTON}
    Click Element                                   ${REGISTER-EMAIL-TAB}
    Wait Until Page Contains Element                ${REGISTER-EMAIL-TEXT}         timeout=20
    Wait Until Page Contains Element                ${REGISTER-DAFTAR-TEXT}        timeout=20

Register With Email User
    [Arguments]  ${EMAIL}
    Input Text                                      ${REGISTER-EMAIL-FIELD}         ${EMAIL}
    Submit Register

Verify OTP Email Register Page
    Wait Until Element Is Visible                   ${REGISTER-VERIFIKASI}           timeout=20

Back to Register Page
    Click Element                                   ${BACK-BUTTON}
