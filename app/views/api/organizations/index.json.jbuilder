# frozen_string_literal: true

json.organizations @organizations do |organization|
  json.call(organization, :id, :name, :domain, :phone)
  json.people_count Person.people_count(organization)
  json.partial! 'address', locals: { organization: organization }
end
