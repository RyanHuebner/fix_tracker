require 'test_helper'

class MealsControllerTest < ActionController::TestCase
  setup do
    @day = days(:one)
    @meal = meals(:one)
  end

  test "should get index" do
    get :index, params: { day_id: @day }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { day_id: @day }
    assert_response :success
  end

  test "should create meal" do
    assert_difference('Meal.count') do
      post :create, params: { day_id: @day, meal: @meal.attributes }
    end

    assert_redirected_to day_meal_path(@day, Meal.last)
  end

  test "should show meal" do
    get :show, params: { day_id: @day, id: @meal }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { day_id: @day, id: @meal }
    assert_response :success
  end

  test "should update meal" do
    put :update, params: { day_id: @day, id: @meal, meal: @meal.attributes }
    assert_redirected_to day_meal_path(@day, Meal.last)
  end

  test "should destroy meal" do
    assert_difference('Meal.count', -1) do
      delete :destroy, params: { day_id: @day, id: @meal }
    end

    assert_redirected_to day_meals_path(@day)
  end
end
