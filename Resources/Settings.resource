*** Settings ***
Library  FakerLibrary
Library  SeleniumLibrary
Library  DateTime
Library  Collections
Library  OperatingSystem

*** Variables ***
${BROWSER}        chrome
${URL}            https://sampleapp.tricentis.com/101/app.php