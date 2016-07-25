require 'test_helper'

class RequestSequencePropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_sequence_property = request_sequence_properties(:one)
  end

  test "should get index" do
    get request_sequence_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_request_sequence_property_url
    assert_response :success
  end

  test "should create request_sequence_property" do
    assert_difference('RequestSequenceProperty.count') do
      post request_sequence_properties_url, params: { request_sequence_property: { date_sequence: @request_sequence_property.date_sequence, sequence: @request_sequence_property.sequence, user_id: @request_sequence_property.user_id } }
    end

    assert_redirected_to request_sequence_property_url(RequestSequenceProperty.last)
  end

  test "should show request_sequence_property" do
    get request_sequence_property_url(@request_sequence_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_sequence_property_url(@request_sequence_property)
    assert_response :success
  end

  test "should update request_sequence_property" do
    patch request_sequence_property_url(@request_sequence_property), params: { request_sequence_property: { date_sequence: @request_sequence_property.date_sequence, sequence: @request_sequence_property.sequence, user_id: @request_sequence_property.user_id } }
    assert_redirected_to request_sequence_property_url(@request_sequence_property)
  end

  test "should destroy request_sequence_property" do
    assert_difference('RequestSequenceProperty.count', -1) do
      delete request_sequence_property_url(@request_sequence_property)
    end

    assert_redirected_to request_sequence_properties_url
  end
end
