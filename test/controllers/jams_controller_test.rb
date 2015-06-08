require 'test_helper'

class JamsControllerTest < ActionController::TestCase
  setup do
    @jam = jams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jam" do
    assert_difference('Jam.count') do
      post :create, jam: { jam_description: @jam.jam_description, jam_embed: @jam.jam_embed, jam_name: @jam.jam_name, jam_url: @jam.jam_url, jamgenre_id: @jam.jamgenre_id, jamkey_id: @jam.jamkey_id, user_id: @jam.user_id }
    end

    assert_redirected_to jam_path(assigns(:jam))
  end

  test "should show jam" do
    get :show, id: @jam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jam
    assert_response :success
  end

  test "should update jam" do
    patch :update, id: @jam, jam: { jam_description: @jam.jam_description, jam_embed: @jam.jam_embed, jam_name: @jam.jam_name, jam_url: @jam.jam_url, jamgenre_id: @jam.jamgenre_id, jamkey_id: @jam.jamkey_id, user_id: @jam.user_id }
    assert_redirected_to jam_path(assigns(:jam))
  end

  test "should destroy jam" do
    assert_difference('Jam.count', -1) do
      delete :destroy, id: @jam
    end

    assert_redirected_to jams_path
  end
end
