require 'selenium-webdriver'

  Selenium::WebDriver::Chrome.driver_path = "./resources/drivers/mac/chromedriver"
  $driver = Selenium::WebDriver.for :chrome
  $driver.manage.window.maximize