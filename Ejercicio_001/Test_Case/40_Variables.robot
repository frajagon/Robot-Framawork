*** Settings ***
Documentation       Descripcion del proyecto ....
Library     SeleniumLibrary


*** Variables ***
${nombre}   =   David Andres

${my_var}     my_value
@{my_list}    Apple    Banana    Orange
&{my_dict}    name=my_value1    password=my_value2


*** Test Cases ***
Demo uno
    [Documentation]     Caso de prueba para ...
    [Tags]      variables

    Log To Console    Prueba del robot variables

Demo dos
    [Documentation]     Caso de prueba para ...
    [Tags]      variables

    ${direccion}=  Set Variable     Nueva dirección
    Log To Console    ${direccion}

Test Case 1
    Log    ${my_list}   # Pass: Logs the whole list object
    Log Many    @{my_list}   # Pass: Logs the items of the list object
    Log Many    ${my_list}   # Pass: Logs the whole list object
    Log List    ${my_list}   # Pass: Logs the whole list object
    Log    ${my_list}[0]    # Pass: Logs the first item of the list object
    #Log    @{my_list}[0]    # Fail: @{my_list} is not a list object and does not have an index
    #Log    @{my_list}       # Fail: The second argument of the Log keyword `level` only allows the values `TRACE`, `DEBUG`, `INFO`, `WARN`, `ERROR`, `NONE`.
                            # The value `Banana` for the argument `level` is not allowed.
    Log    ${my_list}[0] ${my_list}[1] ${my_list}[2]   # Fail: Same as above
    FOR    ${item}    IN    @{my_list}  # Pass: Iterates over the items of the list object
        Log    ${item}                  # Pass: Logs the items of the list object
    END

    FOR    ${item}    IN    ${my_list}  # Pass: Iterates over the items of the list object
        Log    ${item}                  # Pass: Logs the items of the list object
    END

Test Case 2
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

