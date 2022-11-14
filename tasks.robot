*** Settings ***
Documentation     This is a robot built using a sub module
Resource          Sub-Module/Keywords/keywords.robot
Library           DateTime

*** Keywords ***
Date Conversion
    [Arguments]    ${input_date}
    Log    YYYY-MM-DD format: ${input_date}
    ${output_date}=    Convert Date    ${input_date}    result_format=%m/%d/%Y
    Log    Converted restult: ${output_date}
    [Return]    ${output_date}

*** Tasks ***
Minimal task
    ${date_yyyy}=    Convert Date    2022-01-17    date_format=%Y-%m-%d
    ${date_MDY}=    Date Conversion    ${date_yyyy}
    Log    MM/DD/YYYY format: ${date_MDY}
    Log    Main robot file complete.
