*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
     Open Browser       browser=firefox         executable_path=${EXECDIR}/driver/geckodriver
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
     Input Text    name=fldLoginUserId    Nani
    Click Element    xpath=/html/body/form/center/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/a