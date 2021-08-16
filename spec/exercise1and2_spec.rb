require_relative '../exercise1and2/password'

module Exercise1and2

  describe Password do

    it 'must be over 6 characters' do
      expect(Password.new('15aD34')).not_to be_valid
    end

    it 'must be under or equal 28 characters' do
      expect(Password.new('123451234512D4512345123451234')).not_to be_valid
    end

    it 'must contain a capital letter' do
      expect(Password.new('123asdq1we')).not_to be_valid
    end

    it 'must contain a number' do
      expect(Password.new('asddDqwdqeq')).not_to be_valid
    end

    it 'is valid if all requirements are satisfied' do
      expect(Password.new('lskdjf123DBqwe')).to be_valid
    end
  end
end
