Then /^I should have (\d+) arm(?:y|ies)$/ do |count|
  Then "#{count} armies should exist"
end

Given /^no armies exist$/ do
  Army.delete_all
end
