*** Settings ***
Library           AppiumLibrary
Library           emulator

*** Variables ***
${REMOTE_URL}  http://localhost:4723/wd/hub 

*** Test Cases ***
TestStart
    [Documentation]  just demo
    #Open Application  ${REMOTE_URL}    platformName=platformVersion=4.2.2    deviceName=192.168.43.54:5555    appPackage=com.android.chrome    appActivity=MainActivity
    #Capture Page Screenshot
    openmobiledriver


     
    
