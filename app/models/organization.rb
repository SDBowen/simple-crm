# frozen_string_literal: true

class Organization < ApplicationRecord
  has_one :address
  has_many :people

  validates :name, :domain, :phone, presence: true
end
