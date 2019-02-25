# frozen_string_literal: true

class Person < ApplicationRecord
  belongs_to :organization
  has_one :address, through: :organization

  validates :name, :job_title, :email_address, :organization, presence: true

  def self.people_count(org_id)
    Person.where(organization: org_id).count
  end
end
