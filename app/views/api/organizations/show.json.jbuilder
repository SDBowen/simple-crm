# frozen_string_literal: true

json.organization @organization, :id, :name, :domain, :phone
json.people_count Person.people_count(@organization)
json.partial! 'address', locals: { organization: @organization }
