***Keywords***
PatentRegistration
    [Arguments]     ${PatentName}
    Click Element   xpath=//div[@id='home-container']//div[@id='apps']//a[contains(@id,'referenceapplication-registrationapp')]
    
    Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//input[@name='givenName']   timeout=10s

    Input Text  xpath=//input[@name='givenName']    ${PatentName}