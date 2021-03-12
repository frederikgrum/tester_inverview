require 'forwardable'
require 'page_objects/abstract/discoverable_page_object'

class BasePageComponent
  include DiscoverablePageObject
  extend Forwardable

  def_delegators :@item, :flash

  def initialize(watir_element)
    @item = watir_element
    on_init
  end

  def shown?
    @item.present?
  end

  def wait_for_component
    wait_for_condition('Component should appear', catch_exception: false) { shown? }
  end

  def wait_until_gone
    wait_for_condition('Component should disappear', catch_exception: false) { !shown? }
  end

  protected

  def updating_indicator
    # We look via browser instead of @item, so that if the entire item disappears we can handle it
    browser.element(class: 'account-favorite-button--isUpdating')
  end

  private

  def on_init
    # implement this for element specific initialization
  end
end
