require 'test_helper'

class SiblingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sibling = siblings(:one)
  end

  test "should get index" do
    get siblings_url, as: :json
    assert_response :success
  end

  test "should create sibling" do
    assert_difference('Sibling.count') do
      post siblings_url, params: { sibling: { birthdate: @sibling.birthdate, name: @sibling.name, picture: @sibling.picture, points_earned: @sibling.points_earned } }, as: :json
    end

    assert_response 201
  end

  test "should show sibling" do
    get sibling_url(@sibling), as: :json
    assert_response :success
  end

  test "should update sibling" do
    patch sibling_url(@sibling), params: { sibling: { birthdate: @sibling.birthdate, name: @sibling.name, picture: @sibling.picture, points_earned: @sibling.points_earned } }, as: :json
    assert_response 200
  end

  test "should destroy sibling" do
    assert_difference('Sibling.count', -1) do
      delete sibling_url(@sibling), as: :json
    end

    assert_response 204
  end
end
