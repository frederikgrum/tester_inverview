Then ('Verify {string} is joined {string}') do |country, date|
  found_country = current_page.find_country(country)
  expect(found_country.joined_date).to eq date
end
