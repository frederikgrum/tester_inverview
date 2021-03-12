class CountryList < BasePageComponent
  include Enumerable

  def each(&block)
    country_items.each(&block)
  end

  def country_items
    @country_items ||= @item.elements(class: 'country_info_popup').map do |country_item|
      CountryItem.new(country_item)
    end
  end
end
