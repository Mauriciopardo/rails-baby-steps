class Lead < ApplicationRecord
  # The only statuses a lead can have
  STATUSES = %w[hot warm cold].freeze

  # Rules: Rails refuses to save a lead that breaks them
  validates :name, presence: true
  validates :status, inclusion: { in: STATUSES }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
end