# frozen_string_literal: true

json.extract! @organization, :id, :name, :domain, :phone
json.people_count Person.people_count(@organization)
json.partial! 'address', locals: { organization: @organization }
