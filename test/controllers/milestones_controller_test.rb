require 'test_helper'

class MilestonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @milestone = milestones(:one)
  end

  test "should get index" do
    get milestones_url, as: :json
    assert_response :success
  end

  test "should create milestone" do
    assert_difference('Milestone.count') do
      post milestones_url, params: { milestone: { picture: @milestone.picture, sibling_id: @milestone.sibling_id, what: @milestone.what, when: @milestone.when } }, as: :json
    end

    assert_response 201
  end

  test "should show milestone" do
    get milestone_url(@milestone), as: :json
    assert_response :success
  end

  test "should update milestone" do
    patch milestone_url(@milestone), params: { milestone: { picture: @milestone.picture, sibling_id: @milestone.sibling_id, what: @milestone.what, when: @milestone.when } }, as: :json
    assert_response 200
  end

  test "should destroy milestone" do
    assert_difference('Milestone.count', -1) do
      delete milestone_url(@milestone), as: :json
    end

    assert_response 204
  end
end
