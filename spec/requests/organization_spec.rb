# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::OrganizationsController do
  describe 'GET index' do
    before do
      create(:organization)
      create(:organization_two)
      get '/api/organizations', as: :json
    end

    it 'returns a 200 status code' do
      expect(response).to be_successful
    end

    it 'returns all organizations' do
      json = JSON.parse(response.body)

      expect(json['organization'].length).to eq(2)
    end
  end

  describe 'SHOW index' do
    before do
      @organization = create(:organization)
      get '/api/organizations/1', as: :json
    end

    it 'returns a 200 status code' do
      expect(response).to be_successful
    end

    before do
      @json = JSON.parse(response.body)
    end

    it 'returns one organization' do
      expect(@json.length).to eq(5)
    end

    it 'has all organization attributes' do
      expect(@json.keys).to include('id', 'name', 'domain', 'phone', 'address')
    end
  end
end
