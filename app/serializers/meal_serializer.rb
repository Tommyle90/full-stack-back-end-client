class MealSerializer < ActiveModel::Serializer
  attributes :id, :mealtype, :date, :description, :user_id
end
