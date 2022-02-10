*** Settings ***
Library    Collections


*** Test Cases ***
TC1
    Set Local Variable    ${firstname}       Nani
    ${lastname}     Set Variable    Naturalstar
    Log To Console    ${firstname} ${lastname}

    @{fruits}   Create List    apple    banana     grapes
    Log To Console    ${fruits}
    Log To Console    ${fruits}[0]

    FOR    ${color}    IN    @{fruits}
        Log To Console    ${color}
    END

    Log List   ${fruits}

    Set Global Variable    ${otp}   90000

TC2
    Log To Console    ${otp}
#    Log List   ${fruits}
    &{dic}   Create Dictionary   firstname=Nani    lastname=Naturalstar   mobile=987654321
    Log To Console    ${dic}[lastname]

