class ListExample < BasePageComponent
  include Enumerable

  def each(&block)
    list_items.each(&block)
  end

  def list_items
    # Create a list of items
  end
end
