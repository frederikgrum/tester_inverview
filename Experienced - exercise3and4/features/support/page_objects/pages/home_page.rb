require_relative '../abstract/base_page'

puts "Loading HomePage"
class HomePage < BasePage

  def url
    'http://google.com/ncr'
  end

  def search_for(term)
    cookie_modal_accept_button.click if cookie_modal_accept_button.present?
    google_search_field.set term
    google_search_button.click
    next_page google.result_page
  end

  # This is an example of how to create a list
  def example_list
    CountryList.new(example_list_element)
  end

  private

  def cookie_modal_accept_button
    browser.element(class: 'KxvlWc').element(class: %w[J2ipb HOq4He]).element(class: 'VDity').element(id: 'zV9nZe')
  end

  def example_list_element
    browser.element(class: 'examples')
  end

  def google_search_field
    browser.element(class: 'RNNXgb').text_field
  end

  def google_search_button
    browser.element(class: 'tfB0Bf').element(class: 'gNO89b')
  end
end
