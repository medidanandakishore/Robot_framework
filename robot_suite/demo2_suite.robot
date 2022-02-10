*** Variables ***
${MY_NAME}      Nani
@{COLORS}       red     green    Blue
*** Test Cases ***
TC1
    Log To Console    ${EXECDIR}
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}${/}driver${/}geckodriver.exe
    Log To Console    ${SUITE_NAME}
    Log To Console    ${TEST_NAME}
    Log To Console    ${TEMPDIR}
    
    Log To Console    ${MY_NAME}
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[2]
    
TC2
    FOR    ${i}    IN  RANGE      2
           Log To Console    ${i}

       END
