*** Settings ***
Library           SeleniumLibrary    #from selenium.webdriver.support import tim
Library           SeleniumLibrary
Library           BuiltIn
Library           Collections
Library           ../customeSelenium.py    WITH NAME    cs

*** Variables ***
${browser}        Chrome
${url}            https://www.google.com

*** Test Cases ***
SearchContent
    Open Browser    ${url}    ${browser}
    Input Text    xpath=//input[@name="q"]    robotframework
    Sleep    5s
    Click Button    xpath=//input[@name="btnK"]
    ${i}    Get Source
    ${Headers}    cs.Get All Headers    ${i}    h3    LC20lb MBeuO DKV0Md
    log    ${Headers}
    FOR    ${Header}    IN    ${Headers}
        log    ${Header}
    END
