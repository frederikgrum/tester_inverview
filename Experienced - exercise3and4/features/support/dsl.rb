module Dsl

  module_function
  def next_page(other)
    $page = other
    other.on_visit
  end

  def current_page
    $page
  end

  def google
    @google ||= BasePage.new
  end

  def browser
    $browser
  end
end

World(Dsl)
