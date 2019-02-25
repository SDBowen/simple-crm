# frozen_string_literal: true

json.organization @organizations do |organization|
  json.extract! organization, :id, :name, :domain, :phone
  json.partial! 'address', locals: { organization: organization }
end
