require 'test_helper'

class SequenceActsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sequence_act = sequence_acts(:one)
  end

  test "should get index" do
    get sequence_acts_url
    assert_response :success
  end

  test "should get new" do
    get new_sequence_act_url
    assert_response :success
  end

  test "should create sequence_act" do
    assert_difference('SequenceAct.count') do
      post sequence_acts_url, params: { sequence_act: { date_sequence: @sequence_act.date_sequence, sequence: @sequence_act.sequence, user_id: @sequence_act.user_id } }
    end

    assert_redirected_to sequence_act_url(SequenceAct.last)
  end

  test "should show sequence_act" do
    get sequence_act_url(@sequence_act)
    assert_response :success
  end

  test "should get edit" do
    get edit_sequence_act_url(@sequence_act)
    assert_response :success
  end

  test "should update sequence_act" do
    patch sequence_act_url(@sequence_act), params: { sequence_act: { date_sequence: @sequence_act.date_sequence, sequence: @sequence_act.sequence, user_id: @sequence_act.user_id } }
    assert_redirected_to sequence_act_url(@sequence_act)
  end

  test "should destroy sequence_act" do
    assert_difference('SequenceAct.count', -1) do
      delete sequence_act_url(@sequence_act)
    end

    assert_redirected_to sequence_acts_url
  end
end
