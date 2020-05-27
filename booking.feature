require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver= 
Selenium::WEbDriver.for:chrome

Given("open the website") do
driver.navigate.to"https://automationintesting.online/#/"
end

Then("user book this room") do
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[4]/div/div/div[3]/button").click
sleep(2)
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[4]/div/div[2]/div[3]/div[1]/input').click
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[4]/div/div[2]/div[3]/div[1]/input').send_keys 'Tomo'
sleep(2)
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[4]/div/div[2]/div[3]/div[2]/input').click
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[4]/div/div[2]/div[3]/div[2]/input').send_keys 'Investree'
sleep(2)
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[4]/div/div[2]/div[3]/div[3]/input').click
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[4]/div/div[2]/div[3]/div[3]/input').send_keys 'tomo.investree@gmail.com'
sleep(2)
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[4]/div/div[2]/div[3]/div[4]/input').click
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[4]/div/div[2]/div[3]/div[4]/input').send_keys '123456789101'
sleep(2)
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[4]/div/div[2]/div[3]/div[1]/input').click
sleep(2)
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[4]/div/div[2]/div[3]/div[5]/p[1]').text
sleep(2)
end

Then("user closing the browser") do
driver.quit
end
