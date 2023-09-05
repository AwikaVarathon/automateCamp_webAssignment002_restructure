*** Settings ***
Resource        ${CURDIR}/../../import.robot

*** Variables ***
${CART_TABLE}                       //div[@id='content']//table
${CART_TABLE_TH}                    ${CART_TABLE}//tbody//tr[1]//td[1]
${CART_TABLE_TH_TEXT}               Product id
${CART_TABLE_TOTAL}                 //div[@id='content']//h3[contains(text(),'Total')]
${CART_TABLE_COLUMN_NO_TITLE}       2    

*** Keywords ***
Verify Cart Page Load Success With Cart Table
    Wait Until Element Contains     ${CART_TABLE_TH}     ${CART_TABLE_TH_TEXT}   

Verify Adding Product Is In Cart Table 
    [Arguments]     ${row_no}   ${product_name} 
    Table Cell Should Contain   ${CART_TABLE}   ${row_no+1}   ${CART_TABLE_COLUMN_NO_TITLE}   ${product_name}

Verify Cart Total Is Correct
   [Arguments]    ${total_price}
   Element Text Should Be           ${CART_TABLE_TOTAL}    Total: $${total_price}