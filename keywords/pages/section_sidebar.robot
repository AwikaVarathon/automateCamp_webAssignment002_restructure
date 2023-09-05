*** Settings ***
Resource        ${CURDIR}/../../import.robot

*** Variables ***
${NAV_BAR_LI}                       //div[@id='sectionLinks']//li 
${NAV_BAR_LI_BROWSE_CATEGORIES}     ${NAV_BAR_LI}//a[contains(@href,'categories.php')]   

*** Keywords ***
Click Sidebar To Categories Page
    Click Element       ${NAV_BAR_LI_BROWSE_CATEGORIES}   