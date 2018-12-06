class MealSerializer < ActiveModel::Serializer
  attributes :id, :mealtype, :date, :description
  belongs_to :user, serializer: UserSerializer
end
