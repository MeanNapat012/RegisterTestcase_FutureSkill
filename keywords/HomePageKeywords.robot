*** Settings ***
Library    SeleniumLibrary
Resource    CommonKeyword.robot

*** Keywords ***
future skill should display home page and display message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}

