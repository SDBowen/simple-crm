# frozen_string_literal: true

json.organization @organizations do |organization|
  json.extract! organization, :id, :name, :domain, :phone
  organization.address.nil? ? (json.address nil) : (json.address organization.address, :id, :city, :state, :zip)
end
