require_relative '../exercise1and2/password'

module Exercise1and2

  describe Password do

    it 'must be over 6 characters' do
      expect(Password.new('15ab')).not_to be_valid
    end

    it 'must be under 15 characters' do
      expect(Password.new('123451234512345')).not_to be_valid
    end

    it 'is valid if all requirements are satisfied' do
      expect(Password.new('lskdjfqwe')).to be_valid
    end
  end
end
