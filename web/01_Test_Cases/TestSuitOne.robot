*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary   60s
Resource          ..\\02_Test_Resources\\Login.robot
Resource          ..\\02_Test_Resources\\Registration.robot
Resource          ..\\02_Test_Resources\\Youtube.robot

# Library           Sample
#Suite Setup       loginMyApp   ${BROWSER}
#Suite Teardown    SuiteTeardown


*** Variables ***
${LOCALURL}     https://youtube.com
${LOCALURL1}     http://localhost:4201
${LOCALURL2}     http://localhost:4202
${DirectURL}    https://code.siemens.com/sisuite/sisuite-uum 
${HOST}         https://sisuite-devices.horizondev.cloud/#/
${LOGIN URL}    https://sisuite-dashboard.horizondev.cloud/dashboard/scsIndex.html#/ 
${BROWSER}      Chrome

*** Test Cases ***
Hackothon
    [Tags]      Hack
    Launch      ${LOCALURL}     ${BROWSER}

Login TestCase
    [Tags]      Regression  Sanity
    
    PatentRegistration  Vasanth

Login TestCase
    [Tags]      Smoke
    loginMyApp   ${BROWSER}
    PatentRegistration  Valli
    




# TestCase One
#     [Tags]   Regression
#     ${1_index}=    Open Browser  http://localhost:4200    ${BROWSER}
#     Log     "TestCase One="'${1_index}'
#     Title Should Be     localhost
#     set implicit time
#     Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//button[@id='reload-button']   timeout=10s 

#     #Close Browser

# TestCase Two
#     [Tags]   Smoke  Priority1
#     ${1_index}=     Open Browser  http://localhost:4201    ${BROWSER} 
#     Log     "TestCase Two"
#     #Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//title[text()='Imdb']   timeout=30s 
#     #Close Browser

# TestCase Three
#     [Tags]   Sanity
#     ${1_index}=     Open Browser  http://localhost:4202    ${BROWSER}  
#     Log     "TestCase Three"
#     #Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//title[text()='Imdb']   timeout=30s 
#     Close Browser

# TestCase Four
#     [Tags]   Smoke  Pppr
#     ${1_index}=     Open Browser  http://localhost:4204    ${BROWSER} 
#     Log     "TestCase Four"
#     #Run Keyword And Continue On Failure     Wait Until Element Is Visible   xpath=//title[text()='Imdb']   timeout=30s 
#     #Close Browser




#Operation Scheduler Customer Attachment
    #Launch Browser
    #Enter the UAA Using siemens
    #Select Certificate
    #Enter PinNumber

	
*** Keywords ***
Dumy
    Open Browser    ${LOGIN URL}    ${BROWSER}
DragAndDropFiles
    funcToDragFile  900     900
    
Open Browser To Home Page
    Open Browser    ${LOGIN URL}    ${BROWSER}

    Wait Until Element Is Visible   xpath=//*[@id="logincontainer"]//button[@class="auth0-lock-social-button"][3]   timeout=30s 
    
    Click Button    xpath=//*[@id="logincontainer"]//button[@class="auth0-lock-social-button"][3]

    Wait Until Element Is Visible   xpath=//input[@id="identifierId"]   timeout=30s 

    Press Keys  xpath=//input[@id="identifierId"]   uitest2ui@gmail.com

    Click Element    xpath=//div[@id="identifierNext"]
    
    #Close Browser

Open Device Manager
    Open Browser    ${DirectURL}    ${BROWSER}

    Wait Until Element Is Visible   xpath=//a[@id="oauth-login-saml"]   timeout=30s 

    Click Element    xpath=//a[@id="oauth-login-saml"]

    Wait Until Element Is Visible   xpath=//div[@class="button p clearfix"]   timeout=30s 

    Click Element    xpath=//div[@id="widget_col_login"][2]//div[@class="button p clearfix"]

Launch Browser    
    Open Browser    ${LOCALURL}    ${BROWSER}
    Maximize Browser Window

Enter the UAA Using siemens (old)
    Wait Until Element Is Visible   xpath=//*[@id="logincontainer"]//button[@class="auth0-lock-social-button sie-btn"]   timeout=30s 
    
    Click Button    xpath=//*[@id="logincontainer"]//button[@class="auth0-lock-social-button sie-btn"]

    Wait Until Element Is Visible   xpath=//div[@id="portlet_pki"]//div[@class="button p clearfix"]   timeout=30s     #wait until the Siemens Authentication service page opens

    Click Element   xpath=//div[@id="portlet_pki"]//div[@class="button p clearfix"]

Enter the UAA Using EmailID
    Wait Until Element Is Visible   xpath=//input[@type="email" and @name="usr_name"]   timeout=30s 
    Input Text  xpath=//input[@type="email" and @name="usr_name"]  vasantharamani.kandasami@siemens.com
    Input Text  xpath=//input[@type="password" and @name="usr_password"]  Email@24567612!
    Click Button  xpath=//button[@type="submit" and @id="email_password_login_button"]


Enter the UAA Using siemens

    Wait Until Element Is Visible   xpath=//*[@id="logincontainer"]//button[@class="auth0-lock-social-button sie-btn"]   timeout=30s 
    
    Click Button    xpath=//*[@id="logincontainer"]//button[@class="auth0-lock-social-button sie-btn"]

    Sleep   30s
    
    #Wait Until Element Is Visible   xpath=//div[@id="pki-login"]   timeout=30s 
    
    #Run keyword And Continue On Failure     Click Element    xpath=//div[@id="pki-login"]//div[@class="login-method-text"]

    #Wait Until Element Is Visible   xpath=//button[@id="authorize"]   timeout=130s     #wait until the Siemens Authentication service page opens

    #Click Element   xpath=//button[@id="authorize"]


    
Add New Task WithOut Attachment
    Enter the NewTask Details
    Click button    xpath=//button[@type="submit"]

Add New Task With Attachment
    funcToDragFile  0   0
    Click Element At Coordinates    xpath=//td[@class="attachment"]

Enter the NewTask Details
    Wait Until Element Is Visible   xpath=//span[@class="nav-item-icon"]//i[@class="siveillance-add"]   timeout=120s    #Add Button
    Click Element    xpath=//span[@class="nav-item-icon"]//i[@class="siveillance-add"]
    Wait Until Element Is Visible   xpath=//input[@formcontrolname="name"]   timeout=130s   #Enter Name
    Input Text  xpath=//input[@formcontrolname="name"]  Task-One
    Input Text  xpath=//textarea[@formcontrolname="description"]  TaskOne-Description

Select Certificate
    funcToSelectCertificate

Enter PinNumber
    funToEnterPinNumber     24567612



