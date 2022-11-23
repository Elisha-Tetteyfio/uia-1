require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { age: @user.age, blood_pressure: @user.blood_pressure, bmi: @user.bmi, dpf: @user.dpf, email: @user.email, glucose: @user.glucose, insulin: @user.insulin, name: @user.name, outcome: @user.outcome, pregnancies: @user.pregnancies, skin_thickness: @user.skin_thickness } }, as: :json
    end

    assert_response :created
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { age: @user.age, blood_pressure: @user.blood_pressure, bmi: @user.bmi, dpf: @user.dpf, email: @user.email, glucose: @user.glucose, insulin: @user.insulin, name: @user.name, outcome: @user.outcome, pregnancies: @user.pregnancies, skin_thickness: @user.skin_thickness } }, as: :json
    assert_response :success
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user), as: :json
    end

    assert_response :no_content
  end
end
