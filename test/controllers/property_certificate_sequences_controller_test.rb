require 'test_helper'

class PropertyCertificateSequencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property_certificate_sequence = property_certificate_sequences(:one)
  end

  test "should get index" do
    get property_certificate_sequences_url
    assert_response :success
  end

  test "should get new" do
    get new_property_certificate_sequence_url
    assert_response :success
  end

  test "should create property_certificate_sequence" do
    assert_difference('PropertyCertificateSequence.count') do
      post property_certificate_sequences_url, params: { property_certificate_sequence: { date_sequence: @property_certificate_sequence.date_sequence, sequence: @property_certificate_sequence.sequence, user_id: @property_certificate_sequence.user_id } }
    end

    assert_redirected_to property_certificate_sequence_url(PropertyCertificateSequence.last)
  end

  test "should show property_certificate_sequence" do
    get property_certificate_sequence_url(@property_certificate_sequence)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_certificate_sequence_url(@property_certificate_sequence)
    assert_response :success
  end

  test "should update property_certificate_sequence" do
    patch property_certificate_sequence_url(@property_certificate_sequence), params: { property_certificate_sequence: { date_sequence: @property_certificate_sequence.date_sequence, sequence: @property_certificate_sequence.sequence, user_id: @property_certificate_sequence.user_id } }
    assert_redirected_to property_certificate_sequence_url(@property_certificate_sequence)
  end

  test "should destroy property_certificate_sequence" do
    assert_difference('PropertyCertificateSequence.count', -1) do
      delete property_certificate_sequence_url(@property_certificate_sequence)
    end

    assert_redirected_to property_certificate_sequences_url
  end
end
