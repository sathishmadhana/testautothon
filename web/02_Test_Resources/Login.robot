*** Settings ***
Resource          ..\\03_Test_Locators\\Loc_Login.robot

***Keywords***
loginMyApp
    [Arguments]     ${BROWSER}
    Open Browser  https://demo.openmrs.org/openmrs/login.htm    ${BROWSER}
    Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//input[@id='username']   timeout=10s
    
    Input Text  ${L_OEP_UserName_Text}   Admin
    Input Text  ${L_OEP_Password_Text}  Admin123

    Click Element    xpath=//li[@id='Inpatient Ward']

    Click Button    xpath=//input[@id='loginButton']

    Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//div[@id='home-container']//*[contains(text(),'Logged in')]   timeout=10s