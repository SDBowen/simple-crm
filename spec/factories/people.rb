# frozen_string_literal: true

FactoryBot.define do
  factory :person do
    name { 'Charley Rippin' }
    job_title { 'Lead Marketing Designer' }
    email_address { 'charley.rippin@hang.biz' }
    phone { nil }
    organization
  end

  factory :person_two, class: 'Person' do
    name { 'Nellie Hyatt' }
    job_title { 'Internal Mining Analyst' }
    email_address { 'nhyatt@schimmel.net' }
    phone { '605-207-1208' }
    organization
  end
end
