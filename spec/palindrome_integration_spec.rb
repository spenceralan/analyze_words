require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the phrase parser path", {:type => :feature}) do
  it("processes the user input and returns correct message if its a palindrome") do
    visit("/")
    fill_in("phrase1", :with => "madam")
    fill_in("phrase2", :with => "anagram")
    click_button("what am i?")
    expect(page).to have_content("'madam' is a palindrome")
  end
  it("processes the user input and returns correct message if input is invalid") do
    visit("/")
    fill_in("phrase1", :with => "madam")
    click_button("what am i?")
    expect(page).to have_content("'' is not valid input ;(")
  end
  it("processes the user input and returns correct message if its a anagram") do
    visit("/")
    fill_in("phrase1", :with => "failed")
    fill_in("phrase2", :with => "a field")
    click_button("what am i?")
    expect(page).to have_content("failed' is an anagram of 'a field")
  end



end
