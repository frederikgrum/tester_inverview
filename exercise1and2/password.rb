module Exercise1and2
  class Password

    def initialize(password)
      @valid = password.length >= 6 && password.length < 15
    end

    def valid?
      @valid
    end
  end
end

