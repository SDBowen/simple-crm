# frozen_string_literal: true

FactoryBot.define do
  factory :address do
    street { '1030 Abe Summit' }
    city { 'Vincenzoton' }
    state { 'HI' }
    zip { '74884' }
    organization
  end
end
