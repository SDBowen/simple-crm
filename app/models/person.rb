# frozen_string_literal: true

class Person < ApplicationRecord
  belongs_to :organization
  has_one :address, through: :organization

  before_save :empty_phone_to_nil
  validates :name, :job_title, :email_address, :organization, presence: true

  def self.people_count(org_id)
    Person.where(organization: org_id).count
  end

  private

  def empty_phone_to_nil
    self.phone = nil if phone.presence.nil?
  end
end
