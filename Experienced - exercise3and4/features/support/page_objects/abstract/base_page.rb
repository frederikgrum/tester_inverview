require 'dsl'

class BasePage
  include Dsl
  def visit
    browser.goto url
    next_page self
  end

  def url
    raise 'method :url should be overwritten to be able to call :visit'
  end

  def on_visit
    browser.wait
  end

  def self.inherited(subclass)
    name = subclass.name.split('::').last
    page_object = subclass.new
    define_method(name.underscore) do
      page_object
    end
    super
  end
end
