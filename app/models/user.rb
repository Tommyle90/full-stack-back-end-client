# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :meals

  validates :email, :password, presence: true
  # validates :email, inclusion: {
  #   in: %w[@],
  #   message: '%{value} is not valid email'
  # }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 6 }
end
