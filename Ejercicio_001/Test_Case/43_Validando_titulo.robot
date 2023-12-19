*** Settings ***
Documentation   Practica dos
Library     SeleniumLibrary
Library    Collections


*** Variables ***
${url}=         https://demoqa.com/text-box
${brouser}=     chrome


*** Test Cases ***
Validando titulo pagina
    Open Browser    ${url}      ${brouser}
    Maximize Browser Window

    ${name}=   Set Variable    id=userName
    ${email}=   Set Variable    id=userEmail
    ${dir1}=   Set Variable    id=currentAddress

    Title Should Be    DEMOQA

    Element Should Be Visible    ${name}
    Element Should Be Enabled    ${name}

    Element Attribute Value Should Be    ${dir1}    placeholder    Current Address


    Input Text      id=userName    Francisco Javier
    Input Text      id=userEmail      frajagon@gmail.com
    Input Text      id=currentAddress     Carrera 45 # 45-63
    Input Text      id=permanentAddress       Carrera 45 # 45-63
    Click Button    id=submit

    Sleep    2s
    Close Browser


*** Keywords ***
# robot -d ../Report Test_uno.robot
# robot -d .\Report\ .\Test_Case\40_Variables.robot


