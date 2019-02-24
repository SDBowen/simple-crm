# frozen_string_literal: true

FactoryBot.define do
  factory :person do
    name { 'Charley Rippin' }
    job_title { 'Lead Marketing Designer' }
    email_address { 'charley.rippin@hang.biz' }
    phone { nil }
    organization
  end
end
