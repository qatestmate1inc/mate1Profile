# mate1Profile

Automated tests to validate the interaction with all fields and links found in the "Edit my profile" page from www.mate1.com

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisities

You need to install the following software for the project to run properly:

* [Python 2.7.12](https://www.python.org/ftp/python/2.7.12/python-2.7.12.msi)
* Selenium 2.53.6 bindings for Python (e.g. pip install selenium)
* Selenium WebDrivers for [Chrome](http://chromedriver.storage.googleapis.com/2.24/chromedriver_win32.zip) & [Edge](https://download.microsoft.com/download/3/2/D/32D3E464-F2EF-490F-841B-05D53C848D15/MicrosoftWebDriver.exe)
* [HTMLTestRunner](http://tungwaiyip.info/software/HTMLTestRunner_0_8_2/HTMLTestRunner.py)
* [Mozilla Firefox v44](https://ftp.mozilla.org/pub/firefox/releases/44.0/win64/en-US/Firefox%20Setup%2044.0.exe)
* Google Chrome - latest
* Microsoft Edge - latest

### Installing on Windows machine

1. Install all the pre-requisites listed above
2. Create the following folder structure inside ```C:\Python27\Scripts``` and place the CH & Edge WebDrivers
  * ```\selenium_webdrivers\chrome\chromedriver.exe```
  * ```\selenium_webdrivers\edge\MicrosoftWebDriver.exe```
3. Create a new folder called ```Errors``` inside ```C:\Python27\Scripts``` to dump the screenshots taken when erros occur during execution

### Running the tests
Use ```TestRunner.bat```. It will give you the option to run the automated tests across multiple browsers and generate html test results after script execution.

### Author
Ciprian Constantin

### Acknowledgment
Wai Yip Tung - for HTMLTestRunner
