*** Settings ***
Documentation   Practica dos
Library     SeleniumLibrary
Library    Collections


*** Variables ***
${url}=         https://demoqa.com/text-box
${brouser}=     chrome

@{my_list}    Apple    Banana    Orange
&{my_dict}    name=my_value1    password=my_value2

*** Test Cases ***
Demo uno
    [Documentation]     Caso de prueba utilizand variables
    [Tags]      variables

    Open Browser    ${url}      ${brouser}
    Maximize Browser Window

    Input Text      id=userName    Francisco Javier
    Input Text      id=userEmail      frajagon@gmail.com
    Input Text      id=currentAddress     Carrera 45 # 45-63
    Input Text      id=permanentAddress       Carrera 45 # 45-63
    Click Button    id=submit

    Sleep    2s
    Close Browser

Test Case 1
    Log    ${my_var}
    Log    ${my_list}
    Log    ${my_dict}
    FOR    ${item}    IN    @{my_list}
        Log    ${item}
    END
    Log    ${my_dict}[name]
    Log    ${my_dict}[password]
    FOR   ${key}    ${value}    IN    &{my_dict}
        Log Many    ${key}    ${value}
    END
    My Keyword

*** Keywords ***
My Keyword
    Log Many    ${my_var}    ${my_list}    ${my_dict}

*** Keywords ***


# robot -d ../Report Test_uno.robot
# robot -d .\Report\ .\Test_Case\40_Variables.robot


