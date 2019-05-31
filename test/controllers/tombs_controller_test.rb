require 'test_helper'

class TombsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tomb = tombs(:one)
  end

  test "should get index" do
    get tombs_url
    assert_response :success
  end

  test "should get new" do
    get new_tomb_url
    assert_response :success
  end

  test "should create tomb" do
    assert_difference('Tomb.count') do
      post tombs_url, params: { tomb: { area: @tomb.area, capacity: @tomb.capacity, code: @tomb.code, description: @tomb.description, entity_id: @tomb.entity_id, expdate: @tomb.expdate, location: @tomb.location, notes: @tomb.notes, price: @tomb.price, public: @tomb.public, title: @tomb.title, type: @tomb.type, user_id: @tomb.user_id } }
    end

    assert_redirected_to tomb_url(Tomb.last)
  end

  test "should show tomb" do
    get tomb_url(@tomb)
    assert_response :success
  end

  test "should get edit" do
    get edit_tomb_url(@tomb)
    assert_response :success
  end

  test "should update tomb" do
    patch tomb_url(@tomb), params: { tomb: { area: @tomb.area, capacity: @tomb.capacity, code: @tomb.code, description: @tomb.description, entity_id: @tomb.entity_id, expdate: @tomb.expdate, location: @tomb.location, notes: @tomb.notes, price: @tomb.price, public: @tomb.public, title: @tomb.title, type: @tomb.type, user_id: @tomb.user_id } }
    assert_redirected_to tomb_url(@tomb)
  end

  test "should destroy tomb" do
    assert_difference('Tomb.count', -1) do
      delete tomb_url(@tomb)
    end

    assert_redirected_to tombs_url
  end
end
