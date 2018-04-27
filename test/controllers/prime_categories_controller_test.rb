require 'test_helper'

class PrimeCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prime_category = prime_categories(:one)
  end

  test "should get index" do
    get prime_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_prime_category_url
    assert_response :success
  end

  test "should create prime_category" do
    assert_difference('PrimeCategory.count') do
      post prime_categories_url, params: { prime_category: { description: @prime_category.description, name: @prime_category.name } }
    end

    assert_redirected_to prime_category_url(PrimeCategory.last)
  end

  test "should show prime_category" do
    get prime_category_url(@prime_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_prime_category_url(@prime_category)
    assert_response :success
  end

  test "should update prime_category" do
    patch prime_category_url(@prime_category), params: { prime_category: { description: @prime_category.description, name: @prime_category.name } }
    assert_redirected_to prime_category_url(@prime_category)
  end

  test "should destroy prime_category" do
    assert_difference('PrimeCategory.count', -1) do
      delete prime_category_url(@prime_category)
    end

    assert_redirected_to prime_categories_url
  end
end
