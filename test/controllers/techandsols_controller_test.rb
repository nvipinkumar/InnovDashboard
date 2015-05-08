require 'test_helper'

class TechandsolsControllerTest < ActionController::TestCase
  setup do
    @techandsol = techandsols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:techandsols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create techandsol" do
    assert_difference('Techandsol.count') do
      post :create, techandsol: { Action: @techandsol.Action, Comments: @techandsol.Comments, Description: @techandsol.Description, ImpOwner_id: @techandsol.ImpOwner_id, Name: @techandsol.Name, Owner: @techandsol.Owner, Reviewed: @techandsol.Reviewed, Status_id: @techandsol.Status_id, Summary: @techandsol.Summary }
    end

    assert_redirected_to techandsol_path(assigns(:techandsol))
  end

  test "should show techandsol" do
    get :show, id: @techandsol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @techandsol
    assert_response :success
  end

  test "should update techandsol" do
    patch :update, id: @techandsol, techandsol: { Action: @techandsol.Action, Comments: @techandsol.Comments, Description: @techandsol.Description, ImpOwner_id: @techandsol.ImpOwner_id, Name: @techandsol.Name, Owner: @techandsol.Owner, Reviewed: @techandsol.Reviewed, Status_id: @techandsol.Status_id, Summary: @techandsol.Summary }
    assert_redirected_to techandsol_path(assigns(:techandsol))
  end

  test "should destroy techandsol" do
    assert_difference('Techandsol.count', -1) do
      delete :destroy, id: @techandsol
    end

    assert_redirected_to techandsols_path
  end
end
