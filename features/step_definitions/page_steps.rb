Given /^a page titled "([^\"]*)"$/ do |title|
  Page.make(:title => title)
end

Given /^page "([^\"]*)" has content "([^\"]*)"$/ do |title, content|
  Page.find_by_title(title).update_attribute(:content, content)
end