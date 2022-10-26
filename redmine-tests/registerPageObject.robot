*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Fill RegisterForm
    [Arguments]    ${username}    ${password}    ${name}    ${surname}    ${email}
    Input Text    id:user_login    ${username}
    Input Text    id:user_password    ${password}
    Input Text    id:user_password_confirmation    ${password}
    Input Text    id:user_firstname    ${name}
    Input Text    id:user_lastname    ${surname}
    Input Text    id:user_mail    ${email}
Click Submit RegisterBtn
    Click Element    name:commit

Verify Account Was Registered
    Element Should Be Visible    id:flash_notice
*** Variables ***
     