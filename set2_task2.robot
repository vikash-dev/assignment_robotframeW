*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome    url=https://www.goto.com/meeting
    Maximize Browser Window

TC2
    Set Selenium Implicit Wait    20s
    Click Element    //button[@id="truste-consent-button"]
    Click Element    //a[text()='Try Free']
    Input Text    id:first-name    Jhon
    Sleep    10s
