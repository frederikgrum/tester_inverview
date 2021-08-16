module Exercise1and2
  class Password

    def initialize(password)
      @valid = password.match?(/^(?=.*[A-Z])(?=.*\d).{7,28}$/)
    end

    def valid?
      @valid
    end
  end
end

