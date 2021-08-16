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

  # This is an example of how to create a list
  def example_list
    ListExample.new(example_list_element)
  end

  private

  def card_section
    browser.element(class: 'card-section').text
  end

  def example_list_element
    browser.element(class: 'examples')
  end

end
