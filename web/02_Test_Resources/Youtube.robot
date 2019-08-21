***Keywords***
Launch
    [Arguments]     ${URL}  ${BROWSER}
    # Open Browser  ${URL}    ${BROWSER}
    Open Browser  https://youtube.com    ${BROWSER}
    Maximize Browser Window
    Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//input[@id='search']   timeout=10s
    Input Text  xpath=//input[@id='search']   step-inforum
    Click Element   xpath=//button[@id='search-icon-legacy']
    Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//h3[@id='channel-title']   timeout=10s
    Click Element   xpath=//h3[@id='channel-title']
    Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//div[@id='tabsContent']   timeout=60s
    # Click Element   xpath=//div[@id='tabsContent']//div[contains(text(),'Videos')]
    Click Element   xpath=//*[@id="tabsContent"]/paper-tab[2]/div
    Run Keyword And Continue On Failure     Wait Until Element Is Enabled   xpath=//a[@title='Big Data Testing']   timeout=60s
    Set Focus To Element    xpath=//a[@title='Big Data Testing']
    Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//a[@title='Big Data Testing']   timeout=60s
    Click Element   xpath=//a[@title='Big Data Testing']
    Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//button[@class='ytp-button ytp-settings-button']   timeout=60s
    Click Element   xpath=//button[@class='ytp-button ytp-settings-button']
    
    


    
