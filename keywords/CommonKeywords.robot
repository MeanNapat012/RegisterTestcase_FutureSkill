*** Settings ***
Library    SeleniumLibrary
Variables    ../resources/config/config.yaml

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${locator}

Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    5x    2s    Input Text    ${locator}    ${text}

Wait until page contains element then verify text
    [Arguments]    ${expected_text}
    Wait Until Keyword Succeeds    5x    2s    Page Should Contain    ${expected_text}

Wait until element is ready then click label
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${locator}

Open Chrome Browser
    ${options}=    Evaluate    sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method    ${options}    add_argument    --start-maximized
    Open Browser    ${baseUrl}    chrome    options=${options}