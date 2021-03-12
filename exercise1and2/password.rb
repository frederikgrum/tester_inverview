module Exercise1and2
  class Password

    def initialize(string)
      @valid = string.length >= 6 && string.length < 15
    end

    def valid?
      @valid
    end
  end
end

