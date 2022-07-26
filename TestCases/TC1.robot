*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${browser}        Chrome
${url}            https://www.google.com

*** Test Cases ***
SearchContent
    Open Browser    ${url}    ${browser}
    Input Text    xpath=//input[@name="q"]    robotframework
    Sleep    10s
    Click Button    xpath=(//input[@name='btnK'])[2]
    Sleep   10s
    Close Browser