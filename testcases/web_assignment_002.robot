*** Settings ***
Library 			SeleniumLibrary

# Command: testcases/robot web_assignment_002_ref.robot

*** Variables ***
${URL}                      http://testphp.vulnweb.com/login.php
${LOGIN_USERNAME}			test
${LOGIN_PASSWORD}			test
${TRESS_POSTER_PRICE}       15000


# Elements - Login
${INPUT_LOGIN_USERNAME}     //div[@id='content']//form//input[@name='uname']
${INPUT_LOGIN_PASSWORD}     //div[@id='content']//form//input[@name='pass']
${BUTTON_LOGIN}             //div[@id='content']//form//input[@value='login']

# Elements - Global Nav
${GLOBAL_NAV_LOGOUT}        //div[@id='globalNav']//td[@align='right']//a
${TITLE_LOGOUT_MESSAGE}     Logout test

# Elements - Nav Bar
${NAV_BAR_BROWSE_CATEGORIES}        //div[@id='sectionLinks']//li//a[text()='Browse categories']

# Elements - Catagories Page
${CATEGOTIES_PAGE_TITLE}            //h2[@id='pageName']
${CATEGOTIES_PAGE_TITLE_TEXT}       categories
${CATEGOTIES_PAGE_LINK_POSTERS}     //div[@id='content']//div[a[h3[text()='Posters']]]//a

# Elements - Posters Page
${POSTERS_PAGE_TITLE}               //h2[@id='pageName']
${POSTERS_PAGE_TITLE_TEXT}          Posters

# Elements - Posters Page: Trees 
${POSTERS_PAGE_TREES_DIV}           //div[a[h3[text()='Trees']]]
${POSTERS_PAGE_TREES_LINK}          ${POSTERS_PAGE_TREES_DIV}//a[contains(@href,'product')] 
${POSTERS_PAGE_TREES_DETAIL}        ${POSTERS_PAGE_TREES_DIV}//p[1]
${POSTERS_PAGE_TREES_DETAIL_TEXT}   bla bla bla
${POSTERS_PAGE_TREES_ARTIST}        ${POSTERS_PAGE_TREES_DIV}//a[contains(@href,'artists')] 
${POSTERS_PAGE_TREES_ARTIST_TEXT}   Blad3

# Elements - Tress Page
${TREES_PAGE_TITLE}                 //h2[@id='pageName']
${TREES_PAGE_TITLE_TEXT}            Trees

# Elements - Product Page
${INPUT_ADD_THIS_PICTURE_TO_CART}   //form//input[@value='add this picture to cart']

# Elements - Cart
${CART_TABLE}                       //div[@id='content']//table
${CART_TABLE_1_TH}                  ${CART_TABLE}//tbody//tr[1]//td[1]
${CART_TABLE_1_TH_TEXT}             Product id
${CART_TABLE_TOTAL}                 //div[@id='content']//h3[contains(text(),'Total')]

*** Test cases ***
Automate Test Web Assignment 002
    # Visit
    Visit Website
    
    # Login
    Login With Username And Password
    Verify Login Success

    # Nav Bar
    Click Browse Categories
    
    # Categories Page 
    Verify Visit Categories Page Success
    Click Category Posters
    
    # Category: Posters Page
    Verify Visit Posters Page Success
    Check Trees Poster In Posters Page
    Click Posters Trees
    
    # Posters: Trees Page
    Verify Visit Tress Page Success
    Click Add This Picture To Cart
    
    # Cart Page
    Verify Visit Cart Page Success
    Verify Cart Total Is Correct

*** Keywords ***
Visit Website
    Open Browser 		${URL}   browser=chrome
    Maximize Browser Window

# Login
Login With Username And Password
    Input Text 			${INPUT_LOGIN_USERNAME}			${LOGIN_USERNAME}
    Input Text 			${INPUT_LOGIN_PASSWORD}			${LOGIN_PASSWORD}
    Click Element		${BUTTON_LOGIN}

Verify Login Success
    Wait Until Element Contains     ${GLOBAL_NAV_LOGOUT}        ${TITLE_LOGOUT_MESSAGE}  

# Nav Bar
Click Browse Categories
    Click Element       ${NAV_BAR_BROWSE_CATEGORIES}

# Categories Page
Verify Visit Categories Page Success
    Wait Until Element Contains     ${CATEGOTIES_PAGE_TITLE}    ${CATEGOTIES_PAGE_TITLE_TEXT} 

Click Category Posters
    Click Element       ${CATEGOTIES_PAGE_LINK_POSTERS}

# Posters Page
Verify Visit Posters Page Success
    Wait Until Element Contains     ${POSTERS_PAGE_TITLE}       ${POSTERS_PAGE_TITLE_TEXT} 

Check Trees Poster In Posters Page
    Page Should Contain Element     ${POSTERS_PAGE_TREES_DIV}
    Check Trees Poster Detail In Posters Page

Check Trees Poster Detail In Posters Page
    Element Text Should Be          ${POSTERS_PAGE_TREES_DETAIL}    ${POSTERS_PAGE_TREES_DETAIL_TEXT}   # Detail
    Element Text Should Be          ${POSTERS_PAGE_TREES_ARTIST}    ${POSTERS_PAGE_TREES_ARTIST_TEXT}   # Artist

Click Posters Trees
    Click Link          ${POSTERS_PAGE_TREES_LINK} 

# Tress Page
Verify Visit Tress Page Success
    Wait Until Element Contains     ${TREES_PAGE_TITLE}    ${TREES_PAGE_TITLETEXT} 

Add This Picture To Cart
    Wait Until Element Contains     ${TREES_PAGE_TITLE}    ${TREES_PAGE_TITLETEXT} 

Click Add This Picture To Cart
    Click Element       ${INPUT_ADD_THIS_PICTURE_TO_CART}  

# Cart Page
Verify Visit Cart Page Success
    Wait Until Element Contains     ${CART_TABLE_1_TH}     ${CART_TABLE_1_TH_TEXT}  

Verify Cart Total Is Correct
   Element Text Should Be           ${CART_TABLE_TOTAL}    Total: $${TRESS_POSTER_PRICE}


    

