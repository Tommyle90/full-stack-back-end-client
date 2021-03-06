class Meal < ApplicationRecord
  belongs_to :user
  validates :mealtype, :date, :description, :user_id, presence: true
  validates :mealtype, inclusion: {
    in: %w[BREAKFAST LUNCH DINNER SNACK],
    message: '%{value} is not valid please use SNACK BREAKFAST LUNCH or DINNER'
  }
  validates :date, inclusion: {
    in: (Date.today-1.years..Date.today) }
end
