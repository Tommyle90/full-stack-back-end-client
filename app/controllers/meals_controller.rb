class MealsController < ProtectedController
  before_action :set_meal, only: %i[show update destroy]

  # GET /examples
  # GET /examples.json
  def index
    @meals = current_user.meals

    render json: @meals
  end

  # GET /examples/1
  # GET /examples/1.json
  def show
    render json: @meal
  end

  # POST /examples
  # POST /examples.json
  def create
    @meal = current_user.meals.build(meal_params)

    if @meal.save
      render json: @meal, status: :created
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examples/1
  # PATCH/PUT /examples/1.json
  def update
    if @meal.update(meal_params)
      render json: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examples/1
  # DELETE /examples/1.json
  def destroy
    @meal.destroy

    head :no_content
  end

  def set_meal
    @meal = current_user.meals.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:mealtype, :date, :description, :user_id)
  end

  private :set_meal, :meal_params
end
