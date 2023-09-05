*** Settings ***
Resource        ${CURDIR}/../../import.robot

*** Variables ***

*** Keywords ***
Login With Correct Username And Password, User To Userinfo Page
    [Arguments]     ${username}     ${password}     ${name}
    page_login.Input Username       ${username} 
    page_login.Input Password       ${password}
    page_login.Click Login Button
    section_masthead.Top Bar Should Contains Text "Logout Username"         ${username} 
    page_userinfo.Userinfo Page Should Contain Title "Name (Username)"      ${name}         ${username} 
