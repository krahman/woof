Given(/^there's a user called "(.*?)" "(.*?)" having email "(.*?)"$/) do |first_name, last_name, email|
  @user = FactoryGirl.create(:user, first_name: first_name, last_name: last_name, email: email)
end

When(/^I am on the user page$/) do
  visit "/users"
end

Then(/^I should see "(.*?)" "(.*?)" having email "(.*?)"$/) do |first_name, last_name, email|
  @user = User.find_by_email(email)
  expect(page).to have_content(@user.first_name)
  expect(page).to have_content(@user.last_name)
  expect(page).to have_content(@user.email)
end