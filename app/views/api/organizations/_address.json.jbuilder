# frozen_string_literal: true

if organization.address.nil?
  (json.address nil)
else
  (json.address organization.address, :id, :city, :state, :zip)
end
