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
* Text editor - e.g. [Sublime Text 3](https://download.sublimetext.com/Sublime%20Text%20Build%203114%20x64%20Setup.exe)

### Installing on Windows machine

1. Install all the pre-requisites listed above
2. Create the following folder structure inside ```C:\Python27\Scripts``` and place the CH & Edge WebDrivers
  * ```\selenium_webdrivers\chrome\chromedriver.exe```
  * ```\selenium_webdrivers\edge\MicrosoftWebDriver.exe```
3. Include the ChromeDriver & MicrosoftWebDriver locations in your PATH environment variable
4. Create a new folder called ```Errors``` inside ```C:\Python27\Scripts``` to dump the screenshots taken when erros occur during execution
5. Download and place ```HTMLTestRunner.py``` and ```mate1inc.py``` inside ```C:\Python27\Scripts```

### Running the tests
Run ```TestRunner.bat```.
It will give you the option to run the automated tests across multiple browsers and generate html test results for each browser tested.

### Script details
Script will run 5 different automated tests which will test the functionality of the 'Edit my profile' and 'View my profile' pages. These are the tests that are being performed:
* test_valid_login - user is able to login into his account using a valid email and password
* test_edit_profile_basic_info - validation of all the fields listed in the basic info section
* test_edit_profile_text_fields_sanitization - validation that illegal strings are stripped from 'About myself' & 'What I'm looking for' fields
* test_edit_profile_other_fields - validation of other fields found on the 'Edit my profile' page
* test_reset_testing_account - resets the test account profile to default values for testing purposes

### Author
Ciprian Constantin

### Acknowledgment
Wai Yip Tung - for HTMLTestRunner
