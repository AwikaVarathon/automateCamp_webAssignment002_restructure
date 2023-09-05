*** Settings ***
Resource        ${CURDIR}/../import.robot

Test Setup      common.Begin Web Test
Test Teardown   common.End Web Test

# Command: robot testcases/web_assignment_002_restructure.robot

*** Variables ***
${LOGIN_USERNAME}			test
${LOGIN_PASSWORD}			test
${LOGIN_NAME}			    aman

*** Test Cases ***
Automate Test Web Assignment 002 Restructure
    Visit Acuart Website Login Page
    login_feature.Login With Correct Username And Password, User To Userinfo Page     ${LOGIN_USERNAME}   ${LOGIN_PASSWORD}   ${LOGIN_NAME}
    clicklink_feature.Click Sidebar To Categories Page, Verify To Page Successfully
    clicklink_feature.Click Title In Categories Page, Verify To List Products Page Successfully     Posters
    page_listproducts.Check List Products Page Contain Product      Trees
    page_listproducts.Check This Product Detail And Artist          Trees   bla bla bla     Blad3
    clicklink_feature.Click Title In List Products Page, Verify To Product Page Successfully    Trees
    page_product.Click Add This Picture To Cart
    page_cart.Verify Cart Page Load Success With Cart Table
    page_cart.Verify Adding Product Is In Cart Table    ${1}   Trees
    page_cart.Verify Cart Total Is Correct    15000