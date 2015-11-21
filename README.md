# poc-selector-performance
POC to check performance differences between selenium locators

## Requirements

- NodeJS
- Chrome or Firefox browser

## Installation

### Windows

    $> install.bat
    
### Linux

    $> sudo sh install.sh
    
### Manual

    $> npm i -g grunt-cli@0.1.13 selenium-webdriver@2.48.2 cucumber@0.9.2 http-server
    $> webdriver-manager update
    $> npm i
    
## Run

In separate command lines run the following commands.

### Run the server (test website)

    $> http-server
    
The website will be available at `localhost:8080`.

### Run the test

    $> grunt chrome
    
or

    $> grunt firefox