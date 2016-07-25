require 'test_helper'

class RequestPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_property = request_properties(:one)
  end

  test "should get index" do
    get request_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_request_property_url
    assert_response :success
  end

  test "should create request_property" do
    assert_difference('RequestProperty.count') do
      post request_properties_url, params: { request_property: { certificate: @request_property.certificate, comment: @request_property.comment, request_certificate: @request_property.request_certificate, sequence_certificate: @request_property.sequence_certificate, sequence_request: @request_property.sequence_request, user_id: @request_property.user_id } }
    end

    assert_redirected_to request_property_url(RequestProperty.last)
  end

  test "should show request_property" do
    get request_property_url(@request_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_property_url(@request_property)
    assert_response :success
  end

  test "should update request_property" do
    patch request_property_url(@request_property), params: { request_property: { certificate: @request_property.certificate, comment: @request_property.comment, request_certificate: @request_property.request_certificate, sequence_certificate: @request_property.sequence_certificate, sequence_request: @request_property.sequence_request, user_id: @request_property.user_id } }
    assert_redirected_to request_property_url(@request_property)
  end

  test "should destroy request_property" do
    assert_difference('RequestProperty.count', -1) do
      delete request_property_url(@request_property)
    end

    assert_redirected_to request_properties_url
  end
end
