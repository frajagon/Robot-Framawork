*** Settings ***
Documentation       Descripcion del proyecto ....
Library     SeleniumLibrary


*** Variables ***
${nombre}   =   David Andres




*** Test Cases ***
Demo uno
    [Documentation]     Caso de prueba para ...
    [Tags]      variables

    Log To Console    Prueba del robot variables
*** Keywords ***

