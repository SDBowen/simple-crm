# frozen_string_literal: true

json.organization do
  json.call(@organization, :id, :name, :domain, :phone)
  json.people_count Person.people_count(@organization)
end
json.partial! 'address', locals: { organization: @organization }
