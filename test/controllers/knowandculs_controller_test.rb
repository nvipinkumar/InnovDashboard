require 'test_helper'

class KnowandculsControllerTest < ActionController::TestCase
  setup do
    @knowandcul = knowandculs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:knowandculs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create knowandcul" do
    assert_difference('Knowandcul.count') do
      post :create, knowandcul: { Action: @knowandcul.Action, Comments: @knowandcul.Comments, Description: @knowandcul.Description, ImpOwner_id: @knowandcul.ImpOwner_id, Name: @knowandcul.Name, Owner: @knowandcul.Owner, Reviewed: @knowandcul.Reviewed, Status_id: @knowandcul.Status_id, Summary: @knowandcul.Summary }
    end

    assert_redirected_to knowandcul_path(assigns(:knowandcul))
  end

  test "should show knowandcul" do
    get :show, id: @knowandcul
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @knowandcul
    assert_response :success
  end

  test "should update knowandcul" do
    patch :update, id: @knowandcul, knowandcul: { Action: @knowandcul.Action, Comments: @knowandcul.Comments, Description: @knowandcul.Description, ImpOwner_id: @knowandcul.ImpOwner_id, Name: @knowandcul.Name, Owner: @knowandcul.Owner, Reviewed: @knowandcul.Reviewed, Status_id: @knowandcul.Status_id, Summary: @knowandcul.Summary }
    assert_redirected_to knowandcul_path(assigns(:knowandcul))
  end

  test "should destroy knowandcul" do
    assert_difference('Knowandcul.count', -1) do
      delete :destroy, id: @knowandcul
    end

    assert_redirected_to knowandculs_path
  end
end
