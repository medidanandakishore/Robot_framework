*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Test Cases ***
TC1 Valid Login
        Open Browser    url=https://opensource-demo.orangehrmlive.com/        browser=firefox         executable_path=${EXECDIR}/driver/geckodriver
        Input Text    id=txtUsername        Admin
        Input Password    id=txtPassword    admin123
        Click Element    name=Submit
        Click Element    id=welcome
        Sleep    5s
        Click Element    link=Logout
        Close Browser