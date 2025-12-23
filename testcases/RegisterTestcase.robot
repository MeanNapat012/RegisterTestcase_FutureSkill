*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/HomePageKeywords.robot
Resource    ../keywords/RegisterPageKeywords.robot
Variables    ../resources/testdata/testdata.yaml
Suite Setup    Open Chrome Browser
Suite Teardown    Close Browser

*** Test Cases ***
As a user, I want to register
    When user register to future skill platform with ${email} , ${name}, ${lastname}, ${numberphone}, ${password} and ${confirm_password}
    Then future skill should display home page and display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    [Teardown]    Close Browser