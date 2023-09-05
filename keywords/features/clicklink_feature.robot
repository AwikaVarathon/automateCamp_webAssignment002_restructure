*** Settings ***
Resource        ${CURDIR}/../../import.robot

*** Variables ***

*** Keywords ***
# Sidebar
Click Sidebar To Categories Page, Verify To Page Successfully
    section_sidebar.Click Sidebar To Categories Page
    page_categories.Verify Categories Page Load Success With Page Name

# Categories Page
Click Title In Categories Page, Verify To List Products Page Successfully
    [Arguments]     ${title} 
    page_categories.Click Category Title To List Products Page                  ${title} 
    page_listproducts.Verify List Products Page Load Success With Page Name     ${title} 

# List Products Page
Click Title In List Products Page, Verify To Product Page Successfully
    [Arguments]     ${title} 
    page_listproducts.Click Product Title To Product Page               ${title} 
    page_product.Verify Product Page Load Success With Page Name        ${title} 

