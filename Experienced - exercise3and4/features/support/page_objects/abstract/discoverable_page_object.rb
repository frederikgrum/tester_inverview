module DiscoverablePageObject
  # Include to make your page object visible from anywhere, with intellisense and no boilerplate
  def self.included(base)
    base.extend ClassMethods
    base.include Dsl
  end

  module ClassMethods
    def instance
      @instance ||= new
    end

    def method_missing(method, *args, &block)
      return super unless instance.respond_to?(method)

      instance.public_send(method, *args, &block)
    end

    def respond_to_missing?(method, *_args, &block)
      instance.respond_to?(method) || super
    end
  end
end
