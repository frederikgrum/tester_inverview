class CountryItem < BasePageComponent

  def country_id
    country_id_element
  end

  def capital
    capital_field.text
  end

  def joined_date
    joined_date_field.text
  end

  private

  def capital_field
    @item.ul.children[0]
  end

  def joined_date_field
    @item.ul.children[2]
  end

  def country_id_element
    @item.id
  end

end
