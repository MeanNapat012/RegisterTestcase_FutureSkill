*** Settings ***
Library    SeleniumLibrary
Variables    ../resources/config/config.yaml

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait Until Keywords Succeeds    5x    2s    Click Element    ${locator}

Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}