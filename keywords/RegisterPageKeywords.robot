*** Settings ***
Library    SeleniumLibrary
Resource    CommonKeywords.robot

*** Keywords ***
user register to future skill platform with ${email} , ${name}, ${lastname}, ${numberphone}, ${password} and ${confirm_password}
    CommonKeywords.Wait until element is ready then click element    xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text    name=email    ${email}
    CommonKeywords.Wait until element is ready then input text    name=firstName    ${name}
    CommonKeywords.Wait until element is ready then input text    name=lastName    ${lastname}
    CommonKeywords.Wait until element is ready then input text    name=phoneNumber    ${numberphone}
    CommonKeywords.Wait until element is ready then input text    name=newPassword    ${password}
    CommonKeywords.Wait until element is ready then input text    name=confirmPassword    ${confirm_password}
    CommonKeywords.Wait until element is ready then click label    name=consent
    CommonKeywords.Wait until element is ready then click element    xpath=//button[text()="สมัครสมาชิก"]

