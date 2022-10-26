*** Settings ***
Library    SeleniumLibrary

Resource  common.robot
Resource  registerPageObject.robot

Suite Teardown  Close Browser
*** Test Cases ***
Register On Redmine
    Open Website
    Click RegisterBtn
    ${login}=    Generate Random String
    Fill RegisterForm    ${login}    ${password}    ${name}    ${surname}    ${login}@gmail.com
    Click Submit RegisterBtn
    Verify Account Was Registered
*** Variables ***
${username}    Get Login
${password}    qwerty    
${name}    dan
${surname}  dan  
