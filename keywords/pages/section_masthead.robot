*** Settings ***
Resource        ${CURDIR}/../../import.robot

*** Variables ***
${GLOBAL_NAV}                   //div[@id='globalNav']//table
${GLOBAL_NAV_LOGOUT}            ${GLOBAL_NAV}//td[@align='right']//a
${GLOBAL_NAV_TEXT_LOGOUT}       

*** Keywords ***
Top Bar Should Contains Text "Logout Username"
    [Arguments]     ${username}
    Set Global Variable         ${GLOBAL_NAV_TEXT_LOGOUT}   Logout ${username}
    Element Text Should Be      ${GLOBAL_NAV_LOGOUT}        ${GLOBAL_NAV_TEXT_LOGOUT}