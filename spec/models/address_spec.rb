# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Address, type: :model do
  describe 'creation' do
    before do
      @address = create(:address)
    end

    it 'can be created' do
      expect(@address).to be_valid
    end

    it 'cannot be created without street, city, state, zip' do
      @address.street = nil
      @address.city = nil
      @address.state = nil
      @address.zip = nil

      expect(@address.save).to eq(false)
    end

    it 'must be associated with an organization' do
      @address.organization = nil

      expect(@address.save).to eq(false)
    end
  end
end
