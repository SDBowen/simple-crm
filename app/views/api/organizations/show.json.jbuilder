# frozen_string_literal: true

json.extract! @organization, :id, :name, :domain, :phone
json.address @organization.address, :id, :street, :city, :state, :zip
