# frozen_string_literal: true

class Address < ApplicationRecord
  belongs_to :organization

  validates :street, :city, :state, :zip, presence: true
end
