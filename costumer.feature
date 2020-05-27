require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver= 
Selenium::WEbDriver.for:chrome

Given("open the website") do
driver.navigate.to"https://automationintesting.online/#/"
end

Then("user contact the costumer service") do
driver.find_element(:xpath, '//*[@id="name"]').click
driver.find_element(:xpath, '//*[@id="name"]).send_keys 'Tomo Investree'
sleep(2)
driver.find_element(:xpath, '//*[@id="email"]').click
driver.find_element(:xpath, '//*[@id="email"]).send_keys 'tomo.investree@gmail.com'
sleep(2)
driver.find_element(:xpath, '//*[@id="phone"]').click
driver.find_element(:xpath, '//*[@id="phone"]).send_keys '123456789101'
sleep(2)
driver.find_element(:xpath, '//*[@id="subject"]').click
driver.find_element(:xpath, '//*[@id="subject"]).send_keys 'Tidak Bisa Booking Tempat'
sleep(2)
driver.find_element(:xpath, '//*[@id="description"]').click
driver.find_element(:xpath, '//*[@id="description"]').send_keys 'Tolong saya tidak bisa memilih tanggal dan tidak bisa booking tempat.'
sleep(2)
driver.find_element(:xpath, '//*[@id="submitContact"]').click
sleep(2)
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[5]/div[2]/div/p[1]').text
sleep(2)
end

Then("user closing the browser") do
driver.quit
end
