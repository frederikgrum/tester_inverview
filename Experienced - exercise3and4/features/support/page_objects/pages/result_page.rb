class ResultPage < BasePage

  def search_for(term)
    form = browser.form(action: 'search/')
    form.text_field.set term
    form.submit
    next_page self
  end

  def result_count
    browser.element(id: 'result-stats').text[/[0-9.]+/].tr('.', '').to_i
  end

  def search_instead_for
    card_section[/(?<=Search instead for ).*/]
  end

  def showing_results_for
    card_section[/(?<=Showing results for ).*/]
  end

  def go_to_eu_member_countries_in_brief
    eu_member_countries_in_brief_link.click
  end

  def find_country(expected_country)
    country_list.country_items.detect { |country| expected_country == country.country_id }
  end

  # This is an example of how to create a list
  def country_list
    CountryList.new(country_list_element)
  end

  def select_to_measurement(measurement)
    to_measurement_dropdown_option(measurement).click
  end

  def to_measurement_box_text_field_text
    to_measurement_box.text_field.value
  end

  def from_measurement_box_text_field_text
    from_measurement_box.text_field.value
  end

  private

  def card_section
    browser.element(class: 'card-section').text
  end

  def eu_member_countries_in_brief_link
    browser.element(id: 'search').elements(class: 'hlcw0c')[0].element(class: 'yuRUbf').a
  end

  def country_list_element
    browser.element(class: 'countries_thumbs')
  end

  def measurement_box
    browser.element(class: 'CR33Se')
  end

  def from_measurement_box
    measurement_box.element(id: 'HG5Seb')
  end

  def to_measurement_box
    measurement_box.element(id: 'NotFQb')
  end

  def to_measurement_dropdown_option(measurement)
    to_measurement_box.select.option(text: measurement)
  end
end
