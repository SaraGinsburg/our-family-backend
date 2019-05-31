require 'test_helper'

class NiceDeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nice_deed = nice_deeds(:one)
  end

  test "should get index" do
    get nice_deeds_url, as: :json
    assert_response :success
  end

  test "should create nice_deed" do
    assert_difference('NiceDeed.count') do
      post nice_deeds_url, params: { nice_deed: { picture: @nice_deed.picture, points: @nice_deed.points, sibling_id: @nice_deed.sibling_id, to_whom: @nice_deed.to_whom, what: @nice_deed.what, when: @nice_deed.when } }, as: :json
    end

    assert_response 201
  end

  test "should show nice_deed" do
    get nice_deed_url(@nice_deed), as: :json
    assert_response :success
  end

  test "should update nice_deed" do
    patch nice_deed_url(@nice_deed), params: { nice_deed: { picture: @nice_deed.picture, points: @nice_deed.points, sibling_id: @nice_deed.sibling_id, to_whom: @nice_deed.to_whom, what: @nice_deed.what, when: @nice_deed.when } }, as: :json
    assert_response 200
  end

  test "should destroy nice_deed" do
    assert_difference('NiceDeed.count', -1) do
      delete nice_deed_url(@nice_deed), as: :json
    end

    assert_response 204
  end
end
