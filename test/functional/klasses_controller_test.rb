require 'test_helper'

class KlassesControllerTest < ActionController::TestCase
  setup do
    @klass = klasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:klasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create klass" do
    assert_difference('Klass.count') do
      post :create, klass: { dates: @klass.dates, description: @klass.description, name: @klass.name, photo: @klass.photo }
    end

    assert_redirected_to klass_path(assigns(:klass))
  end

  test "should show klass" do
    get :show, id: @klass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @klass
    assert_response :success
  end

  test "should update klass" do
    put :update, id: @klass, klass: { dates: @klass.dates, description: @klass.description, name: @klass.name, photo: @klass.photo }
    assert_redirected_to klass_path(assigns(:klass))
  end

  test "should destroy klass" do
    assert_difference('Klass.count', -1) do
      delete :destroy, id: @klass
    end

    assert_redirected_to klasses_path
  end
end
