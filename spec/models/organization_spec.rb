# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Organization, type: :model do
  describe 'creation' do
    before do
      @organization = create(:organization)
    end

    it 'can be created' do
      expect(@organization).to be_valid
    end

    it 'cannot be saved without name, domain, or phone' do
      @organization.name = nil
      @organization.domain = nil
      @organization.phone = nil

      expect(@organization.save).to eq(false)
    end
  end
end
