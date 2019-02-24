# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Person, type: :model do
  describe 'creation' do
    before do
      @person = create(:person)
    end

    it 'can be created' do
      expect(@person).to be_valid
    end

    it 'cannot be created without name, job_title, email_address, phone' do
      @person.name = nil
      @person.job_title = nil
      @person.email_address = nil
      @person.phone = nil

      expect(@person.save).to eq(false)
    end

    it 'must be associated with an organization' do
      @person.organization = nil

      expect(@person.save).to eq(false)
    end
  end
end
