require 'appium_lib'
require 'yaml'

opts = {
  caps: {
    "platformName" => "iOS",
    "platformVersion" => "12.4",
    "deviceName" => "iPhone 7",
    "automationName" => "XCUITest",
    "fullReset" => "false",
    "app" => "/Users/asusters/Desktop/protect/test-protect-rspec/apps/UniFi Protect.ipa",
  },
}

RSpec.configure do |config|
  config.before(:suite) do
    @driver = Appium::Driver.new(opts, true).start_driver
    @driver.manage.timeouts.implicit_wait = 10
    Appium.promote_appium_methods Object
  end

  config.after(:all) do
    @driver.driver_quit
  end
end
