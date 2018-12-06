class Meal < ApplicationRecord
  belongs_to :user
  # validates :mealtype, :date, :description, :user_id, presence: true
end
