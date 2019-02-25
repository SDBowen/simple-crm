# frozen_string_literal: true

FactoryBot.define do
  factory :organization do
    name { "O'Connell, Stoltenberg and Greenholt" }
    domain { 'o-connell.com' }
    phone { '503 571-5937' }
  end

  factory :organization_two, class: 'Organization' do
    name { 'Mante LLC' }
    domain { 'schimmel.net' }
    phone { '816 502-2204' }
    address { nil }
  end
end
