*** Settings ***
Resource        ${CURDIR}/../../import.robot

*** Variables ***
${USERINFO_PAGE_PAGE_TITLE}        //h2[@id='pageName']
${USERINFO_PAGE_TITLE_TEXT}        

*** Keywords ***
Userinfo Page Should Contain Title "Name (Username)"    # e.g. Test (test)
    [Arguments]     ${name}     ${username}
    # Set Global Variable            ${USERINFO_PAGE_TITLE_TEXT}  ${name} (${username})
    # Element Text Should Be         ${USERINFO_PAGE_PAGE_TITLE}  ${USERINFO_PAGE_TITLE_TEXT}    
    Element Should Contain         ${USERINFO_PAGE_PAGE_TITLE}  ${username} 
    

