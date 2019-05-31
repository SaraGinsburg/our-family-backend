require 'test_helper'

class KindWordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kind_word = kind_words(:one)
  end

  test "should get index" do
    get kind_words_url, as: :json
    assert_response :success
  end

  test "should create kind_word" do
    assert_difference('KindWord.count') do
      post kind_words_url, params: { kind_word: { points: @kind_word.points, sibling_id: @kind_word.sibling_id, to_whom: @kind_word.to_whom, what: @kind_word.what, when: @kind_word.when } }, as: :json
    end

    assert_response 201
  end

  test "should show kind_word" do
    get kind_word_url(@kind_word), as: :json
    assert_response :success
  end

  test "should update kind_word" do
    patch kind_word_url(@kind_word), params: { kind_word: { points: @kind_word.points, sibling_id: @kind_word.sibling_id, to_whom: @kind_word.to_whom, what: @kind_word.what, when: @kind_word.when } }, as: :json
    assert_response 200
  end

  test "should destroy kind_word" do
    assert_difference('KindWord.count', -1) do
      delete kind_word_url(@kind_word), as: :json
    end

    assert_response 204
  end
end
