require 'test_helper'

class RequestActsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_act = request_acts(:one)
  end

  test "should get index" do
    get request_acts_url
    assert_response :success
  end

  test "should get new" do
    get new_request_act_url
    assert_response :success
  end

  test "should create request_act" do
    assert_difference('RequestAct.count') do
      post request_acts_url, params: { request_act: { amount_act: @request_act.amount_act, city_entity: @request_act.city_entity, date_act: @request_act.date_act, date_sequence: @request_act.date_sequence, description_act: @request_act.description_act, entity: @request_act.entity, sequence: @request_act.sequence, type_act: @request_act.type_act, user_id: @request_act.user_id } }
    end

    assert_redirected_to request_act_url(RequestAct.last)
  end

  test "should show request_act" do
    get request_act_url(@request_act)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_act_url(@request_act)
    assert_response :success
  end

  test "should update request_act" do
    patch request_act_url(@request_act), params: { request_act: { amount_act: @request_act.amount_act, city_entity: @request_act.city_entity, date_act: @request_act.date_act, date_sequence: @request_act.date_sequence, description_act: @request_act.description_act, entity: @request_act.entity, sequence: @request_act.sequence, type_act: @request_act.type_act, user_id: @request_act.user_id } }
    assert_redirected_to request_act_url(@request_act)
  end

  test "should destroy request_act" do
    assert_difference('RequestAct.count', -1) do
      delete request_act_url(@request_act)
    end

    assert_redirected_to request_acts_url
  end
end
