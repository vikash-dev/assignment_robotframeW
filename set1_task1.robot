*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome    url=https://www.db4free.net/
    Maximize Browser Window

TC2
    Set Browser Implicit Wait    20s
    Click Element    //b[contains(text(),"phpMyAdmin")]
    Switch Window    NEW
    Input Text    id:input_username    db123sd
    Input Password    id:input_password    test123fg
    Click Element    id:input_go
    Sleep    15s

