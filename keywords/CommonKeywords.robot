*** Settings ***
Library    SeleniumLibrary
Variables    ../resources/config/config.yaml

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait Until Keywords Succeeds    5x    2s    Click Element    ${locator}

Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}
    Wait Until Keywrods Succeeds    5x    2s    Input Text    ${locator}    ${text}

Wait until page contains element then verify text
    [Arguments]    ${expected_text}
    Wait Until Keywords Succeeds    5x    2s    Page Should Contain    ${expected_text}

Open Chrome Browser
    ${options}=    Evaluate    sys.moduls['selenium.webdriver'].chromeOptions()    sys
    Call Method    ${options}    add_argument    --start-maximized
    Open Browse    ${baseUrl}    chrome    option=${options}