*** Settings ***
Library    SeleniumLibrary
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup         Connect To Database      pymysql     ${DBname}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown      Disconnect From Database

*** Variables ***
${DBname}   mydb
${DBUser}
${DBPass}
${DBHost}   127.0.0.1
${DBPort}   3306

*** Test Cases ***
screenshots


