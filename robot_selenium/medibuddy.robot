*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
        Open Browser    url=https://www.medibuddy.in/       browser=firefox     executable_path=${EXECDIR}/driver/geckodriver
        Maximize Browser Window
        Set Selenium Implicit Wait    30s
        Click Element    link=For Employer
        Switch Window    MediBuddy LaunchPad
        Click Element    Sign up
        Input Text    id=name    Nani
        Input Text    name=email    naturalstar@gmail.com
        Input Text    id=companyName    LT
        Input Text    id=mobileNumber    9877777
        Click Element    xpath=/html/body/div[1]/div/div/div[3]/div[3]/form/div/div[2]/input[2]