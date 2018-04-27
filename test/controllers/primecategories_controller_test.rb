require 'test_helper'

class PrimecategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @primecategory = primecategories(:one)
  end

  test "should get index" do
    get primecategories_url
    assert_response :success
  end

  test "should get new" do
    get new_primecategory_url
    assert_response :success
  end

  test "should create primecategory" do
    assert_difference('Primecategory.count') do
      post primecategories_url, params: { primecategory: { description: @primecategory.description, name: @primecategory.name } }
    end

    assert_redirected_to primecategory_url(Primecategory.last)
  end

  test "should show primecategory" do
    get primecategory_url(@primecategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_primecategory_url(@primecategory)
    assert_response :success
  end

  test "should update primecategory" do
    patch primecategory_url(@primecategory), params: { primecategory: { description: @primecategory.description, name: @primecategory.name } }
    assert_redirected_to primecategory_url(@primecategory)
  end

  test "should destroy primecategory" do
    assert_difference('Primecategory.count', -1) do
      delete primecategory_url(@primecategory)
    end

    assert_redirected_to primecategories_url
  end
end
