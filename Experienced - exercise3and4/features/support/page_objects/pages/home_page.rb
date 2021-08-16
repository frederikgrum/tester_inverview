require_relative '../abstract/base_page'

puts "Loading HomePage"
class HomePage < BasePage

  def url
    'http://google.com/ncr'
  end

  def search_for(term)
    cookie_modal_accept_button.click if cookie_modal_accept_button.present?
    google_search_field.set term
    google_image.click
    google_search_button.click
    next_page google.result_page
  end

  private

  def cookie_modal_accept_button
    browser.element(class: 'KxvlWc').element(class: %w[J2ipb HOq4He]).element(class: 'VDity').element(id: 'L2AGLb')
  end

  def google_search_field
    browser.element(class: 'RNNXgb').text_field
  end

  def google_search_button
    browser.element(class: 'FPdoLc').element(class: 'gNO89b')
  end

  def google_image
    browser.element(class: 'k1zIA')
  end
end
