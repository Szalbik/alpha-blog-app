require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  setup do
    @category = Category.create(name: "sports")
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show, params: { id: @category }
    assert_response :success
  end
end
