require 'test_helper'

class CustomWordsControllerTest < ActionController::TestCase
  setup do
    @custom_word = custom_words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custom_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom_word" do
    assert_difference('CustomWord.count') do
      post :create, custom_word: { key: @custom_word.key, user_id: @custom_word.user_id, word: @custom_word.word }
    end

    assert_redirected_to custom_word_path(assigns(:custom_word))
  end

  test "should show custom_word" do
    get :show, id: @custom_word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @custom_word
    assert_response :success
  end

  test "should update custom_word" do
    patch :update, id: @custom_word, custom_word: { key: @custom_word.key, user_id: @custom_word.user_id, word: @custom_word.word }
    assert_redirected_to custom_word_path(assigns(:custom_word))
  end

  test "should destroy custom_word" do
    assert_difference('CustomWord.count', -1) do
      delete :destroy, id: @custom_word
    end

    assert_redirected_to custom_words_path
  end
end
