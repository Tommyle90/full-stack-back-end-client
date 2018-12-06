class Meal < ApplicationRecord
  belongs_to :user
  validates :mealtype, :date, :description, :user_id, presence: true
  validates :mealtype, inclusion: {
    in: %w[BREAKFAST LUNCH DINNER SNACK],
    message: '%{value} is not a type of meal'
  }
end
