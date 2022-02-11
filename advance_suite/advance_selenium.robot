*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser       browser=firefox         executable_path=${EXECDIR}/driver/geckodriver
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://google.com/
     ${linkcount}   Get Element Count      tag=a
     Log To Console    ${linkcount}

     @{elements}     Get WebElements    tag=a
    FOR     ${i}    IN RANGE    0   ${linkcount}    1
        ${text}     Get Text    ${elements}[${i}]
        Log To Console      ${text}
        Run Keyword If    '${text}'==Images     Click Element    ${elements}[${i}]
        Exit For Loop If    '${text}'==Images
    END