class MealSerializer < ActiveModel::Serializer
  attributes :id, :mealtype, :date, :description
end
