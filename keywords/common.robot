*** Settings ***
Resource        ${CURDIR}/../../import.robot

*** Variables ***
${URL_MAIN}                 http://testphp.vulnweb.com
${URL_LOGIN}                ${URL_MAIN}/login.php

*** Keywords ***
Begin Web Test
    Open Browser    about:blank     browser=chrome
    Set Selenium Speed     0.1s
    Maximize Browser Window

End Web Test
   Close All Browsers     

Visit Acuart Website Login Page
    Go To  		    ${URL_LOGIN}   