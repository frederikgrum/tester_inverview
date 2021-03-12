require_relative '../abstract/base_page'

puts "Loading HomePage"
class HomePage < BasePage

  def url
    'http://google.com/ncr'
  end

  def search_for(term)
    cookie_modal_accept_button.click
    browser.form.text_field.set term
    browser.form.submit
    next_page google.result_page
  end

  # This is an example of how to create a list
  def example_list
    CountryList.new(example_list_element)
  end

  private

  def cookie_modal_accept_button
    browser.element(class: %w[NJfJb hide-focus-ring aID8W Sr5CLc]).element(class: 'irPjbc').iframe.form
  end

  def example_list_element
    browser.element(class: 'examples')
  end
end
