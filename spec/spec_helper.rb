require "appium_lib"
require "yaml"

opts = YAML.load_file(ENV["DEVICE_CONFIG"])
platform = opts[:caps][:platformName]

# load necessary platform
case platform
when "iOS"
  Dir["./platforms/ios/**/*.rb"].each { |file| require file }
when "Android"
  Dir["./platforms/android/**/*.rb"].each { |file| require file }
end

RSpec.configure do |config|
  config.before(:suite) do
    $setup = YAML.load_file(ENV["SETUP_CONFIG"])
    $driver = Appium::Driver.new(opts, true)
    $driver.start_driver
    $driver.manage.timeouts.implicit_wait = 15
    Appium.promote_appium_methods Object
  end

  config.after(:all) do
    $driver.driver_quit
  end
end
