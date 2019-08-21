*** Settings ***
Library           SeleniumLibrary
Library           emulator
Library           Collections
Library           requests

*** Variables ***
${REMOTE_URL}  http://localhost:4723/wd/hub


*** KeyWords ***
GetVideoLink
    [Documentation]  just demo
    ${request}=    get    http://54.169.34.162:5252/video
    Should Be Equal  ${request.status_code}  ${200}
    ${VideoName}=   ${request.content}
    BuiltIn.Set test variable    ${VideoName}    ${request.content}
    ${VideoName}=    Convert To String    ${VideoName}
    Log To Console    ${VideoName}
     
*** Test Cases ***
TestStart
    [Documentation]  just demo
    #openmobiledriver
    #[Arguments]     ${URL}  ${BROWSER}
    # Open Browser  ${URL}    ${BROWSER}
    ${options}=    openmobiledriver
    Create Webdriver    Chrome    chrome_options=${options}
    Go To    https://youtube.com
    #Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//*[@id="header-bar"]/header/div/button/c3-icon/svg   timeout=10s
    Sleep    4
    Click Element    xpath=//*[@id="header-bar"]/header/div/button/c3-icon
    Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//*[@id="header-bar"]/header/ytm-searchbox/form/div/input
    Click Element    xpath=//*[@id="header-bar"]/header/ytm-searchbox/form/div/input
    Input Text  xpath=//*[@id="header-bar"]/header/ytm-searchbox/form/div/input   step-inforum
    Press Keys    xpath=//*[@id="header-bar"]/header/ytm-searchbox/form/div    RETURN
    Sleep    2
    Click Element   xpath=//*[@id="app"]/div[3]/ytm-search/ytm-section-list-renderer/lazy-list/ytm-item-section-renderer/lazy-list/ytm-compact-channel-renderer/div/div/a/h4
    Sleep    3
    Click Element    xpath=//*[@id="app"]/div[1]/ytm-browse/ytm-single-column-browse-results-renderer/div[1]/a[2]
    ${request}=    get    http://54.169.34.162:5252/video
    Should Be Equal  ${request.status_code}  ${200}
    ${VideoName}=    Set Variable    ${request.content}
    Log To Console    ${VideoName}
    Sleep    3
    Click Element    //*[@id="app"]/div[1]/ytm-browse/ytm-single-column-browse-results-renderer/div[1]/ytm-menu/button/c3-icon
    Sleep    2
    

     
    
