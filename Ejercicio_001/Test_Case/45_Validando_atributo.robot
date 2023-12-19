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
    ${email}=   Set Variable   id=userEmail
    ${dir1}=   Set Variable    id=currentAddress
    ${dir2}=   Set Variable    id=permanentAddress
    ${boton}=   Set Variable   id=submit

    Title Should Be    DEMOQA

    Element Should Be Visible    ${name}
    Element Should Be Enabled    ${name}

    Element Attribute Value Should Be    ${dir1}    placeholder    Current Address

    


    Input Text      ${name}     Francisco Javier
    Input Text      ${email}    frajagon@gmail.com
    Input Text      ${dir1}     Carrera 45 # 45-63
    Input Text      ${dir2}     Carrera 45 # 45-63
    Click Button    ${boton}

    Sleep    2s
    Close Browser


*** Keywords ***
# robot -d ../Report Test_uno.robot
# robot -d .\Report\ .\Test_Case\40_Variables.robot


