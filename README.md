# Sequis-QA-Android-LoginRegister
Automation Testing for Login and Register Page in Android Sequis Apps 
using Robot Framework, Python and Appium Library. Works on Emulator Android Devices

Prepared by:
**Tito Valiant Muhammad - Tester Engineer Candidate**

### Concepts

1). Built-in Frameworks
    
    Appium

2). Customized/User defined frameworks

    Robot Framework

## 1. Requirements and Tools

In order to utilise this project you need to have the following installed locally:

* Python
* Chrome and Chromedriver
*Rrobotframework-Appiumlibrary
    
    On Terminal use this command (inside the Sequis folder):
    ```
    $ pip install robotframework-appiumlibrary
    ```
    
## 2. Reporting

Reports, Logs for each module are written into their respective `/Output` directories after a successful run 
with HTML Reports format and Data Log Test Result.

## 3. Usage/How to Run

The project is broken into separate Folder.

### Run the Appium Server:
Before Run the TestCase you should run the appium server first.
Open Command Prompt on your computer, then write this code and ENTER:

`$ appium --allow-cors`

### All Login & Register TestCase:
To run the all modules test case, navigate to `/Test` directory and run:

`$ robot -d Output/AllTestCase Tests`

*NOTE*: They will also generate a HTML report and data Log in `Output/AllTestCase`

### Register Email TestCase:
To run this test case, navigate to `/Test` directory and run:

`$ robot -d Output/Register Tests/RegisterEmail.robot`

*NOTE*: They will also generate a HTML report and data Log in `Output\Register`

### Login Gmail Button TestCase:
To run this test case, navigate to `/Test` directory and run:

`$ robot -d Output/Login Tests/LoginGmailButton.robot`

*NOTE*: They will also generate a HTML report and data Log in `Output\Login`

### Register Phone TestCase:
To run this test case, navigate to `/Test` directory and run:

`$ robot -d Output/Register Tests/RegisterPhone.robot`

*NOTE*: They will also generate a HTML report and data Log in `Output\Register`

### DEMO VIDEO:

<a href="https://github.com/titovaliant/Sequis-QA-Android-LoginRegister/blob/d2c43bad2f0d87888650b58ff6adcc55ee859c4f/Demo%20Video%20Sequis%20QA%20Android%20Apps.mp4">Demo Video - Sequis Android Apps - Tito</a>
