require 'test_helper'

class RadiologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @radiology = radiologies(:one)
  end

  test "should get index" do
    get radiologies_url
    assert_response :success
  end

  test "should get new" do
    get new_radiology_url
    assert_response :success
  end

  test "should create radiology" do
    assert_difference('Radiology.count') do
      post radiologies_url, params: { radiology: { entry: @radiology.entry, patient_id: @radiology.patient_id, viewer: @radiology.viewer } }
    end

    assert_redirected_to radiology_url(Radiology.last)
  end

  test "should show radiology" do
    get radiology_url(@radiology)
    assert_response :success
  end

  test "should get edit" do
    get edit_radiology_url(@radiology)
    assert_response :success
  end

  test "should update radiology" do
    patch radiology_url(@radiology), params: { radiology: { entry: @radiology.entry, patient_id: @radiology.patient_id, viewer: @radiology.viewer } }
    assert_redirected_to radiology_url(@radiology)
  end

  test "should destroy radiology" do
    assert_difference('Radiology.count', -1) do
      delete radiology_url(@radiology)
    end

    assert_redirected_to radiologies_url
  end
end
