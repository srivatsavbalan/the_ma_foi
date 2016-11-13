require 'test_helper'

class RequestRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_rating = request_ratings(:one)
  end

  test "should get index" do
    get request_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_request_rating_url
    assert_response :success
  end

  test "should create request_rating" do
    assert_difference('RequestRating.count') do
      post request_ratings_url, params: { request_rating: { skill_id: @request_rating.skill_id, status: @request_rating.status, student_id: @request_rating.student_id, teacher_id: @request_rating.teacher_id } }
    end

    assert_redirected_to request_rating_url(RequestRating.last)
  end

  test "should show request_rating" do
    get request_rating_url(@request_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_rating_url(@request_rating)
    assert_response :success
  end

  test "should update request_rating" do
    patch request_rating_url(@request_rating), params: { request_rating: { skill_id: @request_rating.skill_id, status: @request_rating.status, student_id: @request_rating.student_id, teacher_id: @request_rating.teacher_id } }
    assert_redirected_to request_rating_url(@request_rating)
  end

  test "should destroy request_rating" do
    assert_difference('RequestRating.count', -1) do
      delete request_rating_url(@request_rating)
    end

    assert_redirected_to request_ratings_url
  end
end
