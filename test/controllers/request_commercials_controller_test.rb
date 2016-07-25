require 'test_helper'

class RequestCommercialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_commercial = request_commercials(:one)
  end

  test "should get index" do
    get request_commercials_url
    assert_response :success
  end

  test "should get new" do
    get new_request_commercial_url
    assert_response :success
  end

  test "should create request_commercial" do
    assert_difference('RequestCommercial.count') do
      post request_commercials_url, params: { request_commercial: { certificate: @request_commercial.certificate, comment: @request_commercial.comment, date_certificate: @request_commercial.date_certificate, date_sequence: @request_commercial.date_sequence, other_certificate: @request_commercial.other_certificate, other_type: @request_commercial.other_type, request_certificate: @request_commercial.request_certificate, sequence_certificate: @request_commercial.sequence_certificate, sequence_request: @request_commercial.sequence_request, user_id: @request_commercial.user_id } }
    end

    assert_redirected_to request_commercial_url(RequestCommercial.last)
  end

  test "should show request_commercial" do
    get request_commercial_url(@request_commercial)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_commercial_url(@request_commercial)
    assert_response :success
  end

  test "should update request_commercial" do
    patch request_commercial_url(@request_commercial), params: { request_commercial: { certificate: @request_commercial.certificate, comment: @request_commercial.comment, date_certificate: @request_commercial.date_certificate, date_sequence: @request_commercial.date_sequence, other_certificate: @request_commercial.other_certificate, other_type: @request_commercial.other_type, request_certificate: @request_commercial.request_certificate, sequence_certificate: @request_commercial.sequence_certificate, sequence_request: @request_commercial.sequence_request, user_id: @request_commercial.user_id } }
    assert_redirected_to request_commercial_url(@request_commercial)
  end

  test "should destroy request_commercial" do
    assert_difference('RequestCommercial.count', -1) do
      delete request_commercial_url(@request_commercial)
    end

    assert_redirected_to request_commercials_url
  end
end
