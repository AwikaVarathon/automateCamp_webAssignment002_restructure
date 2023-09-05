*** Settings ***
Resource        ${CURDIR}/../../import.robot

*** Variables ***
${CATEGOTIES_PAGE_TITLE}                //h2[@id='pageName']
${CATEGOTIES_PAGE_TITLE_TEXT}           categories
${CATEGOTIES_PAGE_CONTENT}              //div[@id='content']
${CATEGOTIES_PAGE_LIST_PRODUCT_LINK}    #e.g.${CATEGOTIES_PAGE_CONTENT}//div[a[h3[text()='Posters']]]//a

*** Keywords ***
Verify Categories Page Load Success With Page Name
    Wait Until Element Contains     ${CATEGOTIES_PAGE_TITLE}    ${CATEGOTIES_PAGE_TITLE_TEXT}   

Set This Category Title Element Xpath By Category Name
    [Arguments]     ${category_name}
    Set Global Variable             ${CATEGOTIES_PAGE_LIST_PRODUCT_LINK}   ${CATEGOTIES_PAGE_CONTENT}//div[a[h3[text()='${category_name}']]]//a          

Click Category Title To List Products Page
    [Arguments]     ${category_name} 
    Set This Category Title Element Xpath By Category Name      ${category_name}
    Click Element   ${CATEGOTIES_PAGE_LIST_PRODUCT_LINK} 


