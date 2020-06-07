*** Settings ***
Documentation  This is basic Test Suits
Library  Selenium2Library
Library  OperatingSystem

Suite Setup     Initialize System

Suite Teardown  Close

*** Variables ***
${BASE_URL} =       https://www.tutorialspoint.com/
${DRIVER} =         chrome


*** Test Cases ***
Open WebSite Home Page
  [documentation]  :This test case is only for open website
  Open Login Page  ${BASE_URL}  ${DRIVER}

*** Keywords ***

Initialize System
  Set Environment Variable  webdriver.chrome.driver  /home/sumit/Desktop/python_web_test/bin/chromedriver
  Set Environment Variable  webdriver.ie.driver  /home/sumit/Desktop/python_web_test/bin/IEDriverServer.exe
  Set Environment Variable  webdriver.gecko.driver  /home/sumit/Desktop/python_web_test/bin/geckodriver

Close
  Set Environment Variable  webdriver.gecko.driver  /home/sumit/Desktop/python_web_test/bin/geckodriver

Open Login Page
  [arguments]  ${BASE_URL}  ${DRIVER}
  Open Browser  ${BASE_URL}  ${DRIVER}
  Close Browser