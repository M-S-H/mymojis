require 'test_helper'

class EmojisControllerTest < ActionController::TestCase
  setup do
    @emoji = emojis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emojis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emoji" do
    assert_difference('Emoji.count') do
      post :create, emoji: { name: @emoji.name, url: @emoji.url }
    end

    assert_redirected_to emoji_path(assigns(:emoji))
  end

  test "should show emoji" do
    get :show, id: @emoji
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emoji
    assert_response :success
  end

  test "should update emoji" do
    patch :update, id: @emoji, emoji: { name: @emoji.name, url: @emoji.url }
    assert_redirected_to emoji_path(assigns(:emoji))
  end

  test "should destroy emoji" do
    assert_difference('Emoji.count', -1) do
      delete :destroy, id: @emoji
    end

    assert_redirected_to emojis_path
  end
end
