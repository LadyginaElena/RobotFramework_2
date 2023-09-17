*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://demo.nopcommerce.com/
*** Test Cases ***
Login Test
    open browser    ${url}   ${browser}
    Maximize Browser Window
    LoginToApplication
    close browser

*** Keywords ***
LoginToApplication
    click link    class:ico-login
    input text    id:Email    Ladygina.ev@mail.ru
    input password    id:Password    Test@123
    click element    class:login-button