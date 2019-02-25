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
      expect(json['organizations'].length).to eq(2)
    end
  end

  describe 'SHOW index' do
    before do
      @organization = create(:organization)
      get "/api/organizations/#{@organization.id}", as: :json
    end

    it 'returns a 200 status code' do
      expect(response).to be_successful
    end

    before do
      @json = JSON.parse(response.body)
    end

    it 'returns one organization' do
      expect(@json.length).to eq(2)
    end

    it 'has all organization attributes' do
      expect(@json['organization'].keys).to include('id', 'name', 'domain', 'phone')
    end

    it 'has related address attribute' do
      expect(@json).to include('address')
    end

    it 'has the people_count' do
      expect(@json['organization']).to include('people_count')
    end
  end
end
