*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 valid Login
        open Browser    url=https://demo.openemr.io/b/openemr/index.php     browser=firefox     executable_path=${EXECDIR}/driver/geckodriver
        Set Selenium Implicit Wait    30s
        Input Text    id=authUser   admin
        Input Password    id=clearPass       pass
        Select From List By Label    name=languageChoice        English (Indian)
        Click Element    xpath=/html/body/form/div[1]/div[1]/div[4]/button
        ${title}        Get Title
        Log To Console    ${title}
        Title Should Be    OpenEMR