*** Settings ***
Documentation     This is a robot built using a sub module
Resource          Sub-Module/Keywords/keywords.robot

*** Tasks ***
Minimal task
    Imported HW
    Log    Main robot file complete.
