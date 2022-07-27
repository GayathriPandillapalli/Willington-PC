*** Settings ***
Library           SeleniumLibrary    #from selenium.webdriver.support import tim
Library           Collections

*** Variables ***
${browser}        Chrome
${url}            https://www.google.com

*** Test Cases ***
SearchContent
    Open Browser    ${url}    ${browser}
    Input Text    xpath=//input[@name="q"]    robotframework
    Sleep    5s
    Click Button    xpath=(//input[@name='btnK'])[2]
    ${r}=    Get Element Attribute    xpath=//input[@class='gLFyf gsfi']    value
    ${msg}=    Run Keyword And Expect Error    *    Should Contain    ${r}    PASS
    Close Browser
