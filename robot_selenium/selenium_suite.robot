*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
    Open Browser       browser=firefox   executable_path=${EXECDIR}/driver/geckodriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr/index.php
    Set Selenium Speed    2s
    Input Text    id=authUser    admin
    Reload Page
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice        English (Indian)

    ${appdesc}      Get Text    xpath=//*[@id="login_form"]/div[1]/div[2]/p[1]
    Log To Console    ${appdesc}

    ${selecteddropdownlabel}    Get Selected List Label    name=languageChoice
    Log To Console    ${selecteddropdownlabel}