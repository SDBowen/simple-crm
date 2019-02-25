# frozen_string_literal: true

if person.address.nil?
  (json.address nil)
else
  (json.address person.address, :id, :street, :city, :state, :zip)
end
