Then /^I should have (\d+) arm(?:y|ies)$/ do |count|
  Army.count.should == count.to_i
end

Given /^no armies exist$/ do
  Army.delete_all
end
