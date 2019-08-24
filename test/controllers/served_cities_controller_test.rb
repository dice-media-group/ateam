require 'test_helper'

class ServedCitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @served_city = served_cities(:one)
  end

  test "should get index" do
    get served_cities_url
    assert_response :success
  end

  test "should get new" do
    get new_served_city_url
    assert_response :success
  end

  test "should create served_city" do
    assert_difference('ServedCity.count') do
      post served_cities_url, params: { served_city: { name: @served_city.name } }
    end

    assert_redirected_to served_city_url(ServedCity.last)
  end

  test "should show served_city" do
    get served_city_url(@served_city)
    assert_response :success
  end

  test "should get edit" do
    get edit_served_city_url(@served_city)
    assert_response :success
  end

  test "should update served_city" do
    patch served_city_url(@served_city), params: { served_city: { name: @served_city.name } }
    assert_redirected_to served_city_url(@served_city)
  end

  test "should destroy served_city" do
    assert_difference('ServedCity.count', -1) do
      delete served_city_url(@served_city)
    end

    assert_redirected_to served_cities_url
  end
end
