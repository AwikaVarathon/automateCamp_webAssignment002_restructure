*** Settings ***
Resource        ${CURDIR}/../../import.robot

*** Variables ***
${LIST_PRODUCTS_PAGE_TITLE}                 //h2[@id='pageName']
${LIST_PRODUCTS_PAGE_PRODUCT_DIV}           #e.g.//div[a[h3[text()='Trees']]]
${LIST_PRODUCTS_PAGE_PRODUCT_LINK}          a[contains(@href,'product')] 
${LIST_PRODUCTS_PAGE_PRODUCT_DETAIL}        p[1]
${LIST_PRODUCTS_PAGE_PRODUCT_ARTIST}        a[contains(@href,'artists')] 
${LIST_PRODUCTS_PAGE_PRODUCT_DETAIL_TEXT}   #e.g.bla bla bla
${LIST_PRODUCTS_PAGE_PRODUCT_TEXT}          #e.g.Blad3

*** Keywords ***
Verify List Products Page Load Success With Page Name
    [Arguments]     ${title} 
    Wait Until Element Contains     ${LIST_PRODUCTS_PAGE_TITLE}    ${title}  

Set This Product Element Xpath By Product Name
    [Arguments]     ${product_name}
    Set Global Variable             ${LIST_PRODUCTS_PAGE_PRODUCT_DIV}   //div[a[h3[text()='${product_name}']]]

Check List Products Page Contain Product 
    [Arguments]     ${product_name} 
    Set This Product Element Xpath By Product Name   ${product_name} 
    Page Should Contain Element                      ${LIST_PRODUCTS_PAGE_PRODUCT_DIV} 

Check This Product Detail And Artist 
    [Arguments]     ${product_name}     ${product_detail}   ${product_artist}
    Set This Product Element Xpath By Product Name    ${product_name} 
    Element Text Should Be      ${LIST_PRODUCTS_PAGE_PRODUCT_DIV}//${LIST_PRODUCTS_PAGE_PRODUCT_DETAIL}    ${product_detail}  
    Element Text Should Be      ${LIST_PRODUCTS_PAGE_PRODUCT_DIV}//${LIST_PRODUCTS_PAGE_PRODUCT_ARTIST}    ${product_artist}

Click Product Title To Product Page 
    [Arguments]     ${product_name} 
    Set This Product Element Xpath By Product Name    ${product_name} 
    Click Element   ${LIST_PRODUCTS_PAGE_PRODUCT_DIV}//${LIST_PRODUCTS_PAGE_PRODUCT_LINK}
