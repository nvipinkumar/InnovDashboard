require 'test_helper'

class ProcandecosControllerTest < ActionController::TestCase
  setup do
    @procandeco = procandecos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procandecos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procandeco" do
    assert_difference('Procandeco.count') do
      post :create, procandeco: { Action: @procandeco.Action, Comments: @procandeco.Comments, Description: @procandeco.Description, ImpOwner_id: @procandeco.ImpOwner_id, Name: @procandeco.Name, Owner: @procandeco.Owner, Reviewed: @procandeco.Reviewed, Status_id: @procandeco.Status_id, Summary: @procandeco.Summary }
    end

    assert_redirected_to procandeco_path(assigns(:procandeco))
  end

  test "should show procandeco" do
    get :show, id: @procandeco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procandeco
    assert_response :success
  end

  test "should update procandeco" do
    patch :update, id: @procandeco, procandeco: { Action: @procandeco.Action, Comments: @procandeco.Comments, Description: @procandeco.Description, ImpOwner_id: @procandeco.ImpOwner_id, Name: @procandeco.Name, Owner: @procandeco.Owner, Reviewed: @procandeco.Reviewed, Status_id: @procandeco.Status_id, Summary: @procandeco.Summary }
    assert_redirected_to procandeco_path(assigns(:procandeco))
  end

  test "should destroy procandeco" do
    assert_difference('Procandeco.count', -1) do
      delete :destroy, id: @procandeco
    end

    assert_redirected_to procandecos_path
  end
end
