require 'test_helper'

class AppearerActsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appearer_act = appearer_acts(:one)
  end

  test "should get index" do
    get appearer_acts_url
    assert_response :success
  end

  test "should get new" do
    get new_appearer_act_url
    assert_response :success
  end

  test "should create appearer_act" do
    assert_difference('AppearerAct.count') do
      post appearer_acts_url, params: { appearer_act: { class_appearer: @appearer_act.class_appearer, document: @appearer_act.document, name: @appearer_act.name, represent_appearer: @appearer_act.represent_appearer, request_act_id: @appearer_act.request_act_id, type: @appearer_act.type, type_appearer: @appearer_act.type_appearer, user: @appearer_act.user } }
    end

    assert_redirected_to appearer_act_url(AppearerAct.last)
  end

  test "should show appearer_act" do
    get appearer_act_url(@appearer_act)
    assert_response :success
  end

  test "should get edit" do
    get edit_appearer_act_url(@appearer_act)
    assert_response :success
  end

  test "should update appearer_act" do
    patch appearer_act_url(@appearer_act), params: { appearer_act: { class_appearer: @appearer_act.class_appearer, document: @appearer_act.document, name: @appearer_act.name, represent_appearer: @appearer_act.represent_appearer, request_act_id: @appearer_act.request_act_id, type: @appearer_act.type, type_appearer: @appearer_act.type_appearer, user: @appearer_act.user } }
    assert_redirected_to appearer_act_url(@appearer_act)
  end

  test "should destroy appearer_act" do
    assert_difference('AppearerAct.count', -1) do
      delete appearer_act_url(@appearer_act)
    end

    assert_redirected_to appearer_acts_url
  end
end
