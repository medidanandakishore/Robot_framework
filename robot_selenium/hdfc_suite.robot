*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Tc1
    Open Browser       browser=firefox          executable_path=${EXECDIR}/driver/geckodriver
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://netbanking.hdfcbank.com/netbanking
    Select Frame    xpath=/html/frameset/frameset/frame

    Input Text    name=fldLoginUserId    test123
    Click Element    link=CONTINUE