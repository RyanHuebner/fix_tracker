require 'test_helper'

class DaysControllerTest < ActionController::TestCase
  setup do
    @program = programs(:one)
    @day = days(:one)
  end

  test "should get index" do
    get :index, params: { program_id: @program }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { program_id: @program }
    assert_response :success
  end

  test "should create day" do
    assert_difference('Day.count') do
      post :create, params: { program_id: @program, day: @day.attributes }
    end

    assert_redirected_to program_day_path(@program, Day.last)
  end

  test "should show day" do
    get :show, params: { program_id: @program, id: @day }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { program_id: @program, id: @day }
    assert_response :success
  end

  test "should update day" do
    put :update, params: { program_id: @program, id: @day, day: @day.attributes }
    assert_redirected_to program_day_path(@program, Day.last)
  end

  test "should destroy day" do
    assert_difference('Day.count', -1) do
      delete :destroy, params: { program_id: @program, id: @day }
    end

    assert_redirected_to program_days_path(@program)
  end
end
