When(/^I submit article details:$/) do |table|
  data = table.hashes[0]
  fill_in 'Title', :with => data[:title]
  fill_in 'Text', :with => data[:text]
  click_button 'Save Article'
end