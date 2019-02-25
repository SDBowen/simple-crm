# frozen_string_literal: true

json.person @person, :id, :name, :job_title, :email_address, :phone
json.organization @person.organization, :id, :name, :domain, :phone
json.partial! 'address', locals: { person: @person }
