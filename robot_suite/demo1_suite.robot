*** Settings ***
Library Date Time
Library DateTime
*** Test Cases ***
TC1 Print Name
    Log To Console hello world
    Log To Console Nani

TC2 Print Date
    ${date)     Get Current Date
    Log To Console    ${date}
TC3 Store Data
    Set Local Variable
    S{name)
    Log To Console $(name}
    Log hello,${name}
    balaji
Set Variable robotframeworksession
    Log To Console ${title}
# store two number and add it
TC4 Add Number
    Set Local Variable    ${num1}   90
    Set Local Variable    ${num2}   80
