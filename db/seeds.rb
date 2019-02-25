# frozen_string_literal: true

require 'csv'

def parse_csv(file_path)
  CSV.foreach(file_path, headers: true) do |row|
    organization = lookup_or_create(row)

    Person.create!(name: row['name'], job_title: row['job_title'], email_address: row['email_address'],
                   phone: row['phone'], organization: organization)
  end

  completed_message
end

def lookup_or_create(row)
  org_detail = { name: row['organization'], phone: row['organization_phone'], domain: row['domain'] }
  address_detail = { street: row['street'], city: row['city'], state: row['state'], zip: row['zip'] }
  organization = Organization.where(org_detail).first

  unless organization
    organization = Organization.create!(org_detail)
    organization.create_address(address_detail)
  end

  organization
end

def completed_message
  puts "#{Organization.count} organizations added"
  puts "#{Address.count} addresses added"
  puts "#{Person.count} people added"
end

parse_csv("#{Rails.root}/db/crm_data.csv")
