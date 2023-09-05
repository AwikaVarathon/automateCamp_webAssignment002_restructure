*** Settings ***
Resource        ${CURDIR}/../../import.robot

*** Variables ***
${PRODUCTS_PAGE_TITLE}                      //h2[@id='pageName']
${PRODUCTS_PAGE_ADD_THIS_PICTURE_TO_CART}   //form//input[@value='add this picture to cart']

*** Keywords ***
Verify Product Page Load Success With Page Name
    [Arguments]     ${title} 
    Wait Until Element Contains     ${PRODUCTS_PAGE_TITLE}    ${title}  

Click Add This Picture To Cart
    Click Element       ${PRODUCTS_PAGE_ADD_THIS_PICTURE_TO_CART}  