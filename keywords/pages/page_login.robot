*** Settings ***
Resource        ${CURDIR}/../../import.robot

*** Variables ***
${LOGIN_FORM}               //div[@id='content']//form
${LOGIN_INPUT_USERNAME}     ${LOGIN_FORM}//input[@name='uname']
${LOGIN_INPUT_PASSWORD}     ${LOGIN_FORM}//input[@name='pass']
${LOGIN_BUTTON}             ${LOGIN_FORM}//input[@value='login']

*** Keywords ***
Input Username
    [Arguments]         ${username}
    Input Text 	        ${LOGIN_INPUT_USERNAME}     ${username}

Input Password
    [Arguments]         ${password}
    Input Text		    ${LOGIN_INPUT_PASSWORD}     ${password}

Click Login Button
    Click Element	    ${LOGIN_BUTTON}
