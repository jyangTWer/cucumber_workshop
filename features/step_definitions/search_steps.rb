Given(/^Open the homepage$/) do
  visit '/'
  sleep 1
end

Given(/^Search "([^"]*)"$/) do | search_content |
  fill_in 'search', with: search_content
  sleep 1
end

Given(/^Have (\d+) result$/) do | expect |
  sleep 1
  result = all('.res li')
  sleep 1
  expect(result.length).to eq expect.to_i
end
