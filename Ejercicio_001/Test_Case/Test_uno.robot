*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# //input[@type='text' or @id='userName']
# input#userName
# //div[text()='Text Box']
# //span[contains(text(),'Box')]


*** Test Cases ***
Test 001
    Open Browser    https://demoqa.com/text-box     chrome
    Maximize Browser Window

    Input Text    id=userName    Francisco Javier
    Input Text    id=userEmail      frajagon@gmail.com
    Input Text    id=currentAddress     Carrera 45 # 45-63
    Input Text    id=permanentAddress       Carrera 45 # 45-63
    Click Button    id=submit

    Sleep    2s
    Close Browser


*** Keywords ***



# robot -d ../Report Test_uno.robot
