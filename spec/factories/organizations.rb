# frozen_string_literal: true

FactoryBot.define do
  factory :organization do
    name { "O'Connell, Stoltenberg and Greenholt" }
    domain { 'o-connell.com' }
    phone { '503 571-5937' }
  end
end
