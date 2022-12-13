*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome    url=https://www.salesforce.com/in/form/signup/freetrial-sales/
    Maximize Browser Window

TC2
    Set Browser Implicit Wait    20s
    Input Text    //input[@name='UserFirstName']    John
    Input Text    //input[@name='UserLastName']    wick S
    Input Text    //input[@name='UserEmail']    john@gmail.com
    Input Text    //input[@name='CompanyName']    Jhony Walker J
    Select From List By Value    //select[@name='UserTitle']    IT_Manager_AP
    Select From List By Label    //select[@name='CompanyEmployees']    101 - 500 employees
    Select From List By Value    //select[@name='CompanyCountry']    GB
    Click Element    //div[@class="checkbox-ui"][1]
    Click Element    //button[@type="submit"]
    Sleep    15s
