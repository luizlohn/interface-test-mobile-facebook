require "appium_lib"
require "pry"

class AppiumWorld
end

if (ENV['ORIGINAPPIUM']=='local') && (ENV['ORIGINOS']=='android')
	caps = Appium.load_appium_txt file: File.expand_path("./../android/androidlocalserver.txt", __FILE__), verbose: true
elsif (ENV['ORIGINAPPIUM']=='remote') && (ENV['ORIGINOS']=='android')
		caps = Appium.load_appium_txt file: File.expand_path("./../android/androidremoteserver.txt", __FILE__), verbose: true
elsif (ENV['ORIGINAPPIUM']=='local') && (ENV['ORIGINOS']=='ios')
		caps = Appium.load_appium_txt file: File.expand_path("./../ios/ioslocalserver.txt", __FILE__), verbose: true
elsif (ENV['ORIGINAPPIUM']=='remote') && (ENV['ORIGINOS']=='ios')
		caps = Appium.load_appium_txt file: File.expand_path("./../ios/iosremoteserver.txt", __FILE__), verbose: true
else
		caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
end


Appium::Driver.new(caps)
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end
