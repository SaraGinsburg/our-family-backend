require 'test_helper'

class ParentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parent = parents(:one)
  end

  test "should get index" do
    get parents_url, as: :json
    assert_response :success
  end

  test "should create parent" do
    assert_difference('Parent.count') do
      post parents_url, params: { parent: { name: @parent.name, password_digest: @parent.password_digest, username: @parent.username } }, as: :json
    end

    assert_response 201
  end

  test "should show parent" do
    get parent_url(@parent), as: :json
    assert_response :success
  end

  test "should update parent" do
    patch parent_url(@parent), params: { parent: { name: @parent.name, password_digest: @parent.password_digest, username: @parent.username } }, as: :json
    assert_response 200
  end

  test "should destroy parent" do
    assert_difference('Parent.count', -1) do
      delete parent_url(@parent), as: :json
    end

    assert_response 204
  end
end
