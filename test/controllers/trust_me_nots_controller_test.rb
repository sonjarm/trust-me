require 'test_helper'

class TrustMeNotsControllerTest < ActionController::TestCase
  setup do
    @trust_me_not = trust_me_nots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trust_me_nots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trust_me_not" do
    assert_difference('TrustMeNot.count') do
      post :create, trust_me_not: { done: @trust_me_not.done, due: @trust_me_not.due, notes: @trust_me_not.notes, title: @trust_me_not.title }
    end

    assert_redirected_to trust_me_not_path(assigns(:trust_me_not))
  end

  test "should show trust_me_not" do
    get :show, id: @trust_me_not
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trust_me_not
    assert_response :success
  end

  test "should update trust_me_not" do
    patch :update, id: @trust_me_not, trust_me_not: { done: @trust_me_not.done, due: @trust_me_not.due, notes: @trust_me_not.notes, title: @trust_me_not.title }
    assert_redirected_to trust_me_not_path(assigns(:trust_me_not))
  end

  test "should destroy trust_me_not" do
    assert_difference('TrustMeNot.count', -1) do
      delete :destroy, id: @trust_me_not
    end

    assert_redirected_to trust_me_nots_path
  end
end
