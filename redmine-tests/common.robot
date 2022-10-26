*** Settings ***
Library    SeleniumLibrary
Library    String

*** Keywords ***
Open Website
    Open Browser    ${url}    ${Browser}
    Set Window Size    1268    1024

Click RegisterBtn
    Click Element    class:register
    
*** Variables ***
${Browser}        Chrome
${url}        https://www.redmine.org/
${Delay}          5s