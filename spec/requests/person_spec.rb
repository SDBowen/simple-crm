# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::PeopleController do
  describe 'GET index' do
    before do
      create(:person)
      create(:person_two)
      get '/api/people', as: :json
    end

    it 'returns a 200 status code' do
      expect(response).to be_successful
    end

    it 'returns all people' do
      json = JSON.parse(response.body)
      expect(json['people'].length).to eq(2)
    end
  end

  describe 'SHOW index' do
    before do
      @person = create(:person)
      get '/api/people/1', as: :json
    end

    it 'returns a 200 status code' do
      expect(response).to be_successful
    end

    before do
      @json = JSON.parse(response.body)
    end

    it 'returns one person' do
      expect(@json.length).to eq(3)
    end

    it 'has all person attributes' do
      expect(@json['person'].keys).to include('id', 'name', 'job_title', 'email_address', 'phone')
    end

    it 'has related organization and address attribute' do
      expect(@json).to include('organization', 'address')
    end
  end
end
