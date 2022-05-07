#!/usr/bin/env ruby
require 'selenium-webdriver'
require 'watir'

sleep(10)
puts "[TEST] Starting login test for admin...."


chromedriver_path = "/home/jungeblo/Downloads/chromedriver"
#puts chromedriver_path
Selenium::WebDriver::Chrome::Service.driver_path = chromedriver_path

driver = Selenium::WebDriver.for :chrome

options = ::Selenium::WebDriver::Chrome::Options.new
options.add_argument('--headless')
options.add_argument('--no-sandbox')
options.add_argument('--disable-dev-shm-usage')
options.add_argument('--window-size=1600,1200')
options.add_argument('--ignore-certificate-errors')

b = Watir::Browser.new :chrome, :options => options
b.goto("http://localhost:3000")
b.text_field(id:'login').present?


b.text_field(id: 'login').set 'admin'
b.text_field(id: 'password').set 'admin'
b.element(:class => 'x-btn-center', :text => /Login/).click

b.element(text: "admin logged in").wait_until(timeout: 30, &:present?)
b.element(visible_text: 'admin logged in').exists? ? answer="yes":answer="no"
puts "[TEST] Logged in:" + answer

