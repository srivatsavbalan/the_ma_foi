require 'test_helper'

class SavedSearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saved_search = saved_searches(:one)
  end

  test "should get index" do
    get saved_searches_url
    assert_response :success
  end

  test "should get new" do
    get new_saved_search_url
    assert_response :success
  end

  test "should create saved_search" do
    assert_difference('SavedSearch.count') do
      post saved_searches_url, params: { saved_search: { name: @saved_search.name, query_string: @saved_search.query_string, user_id: @saved_search.user_id } }
    end

    assert_redirected_to saved_search_url(SavedSearch.last)
  end

  test "should show saved_search" do
    get saved_search_url(@saved_search)
    assert_response :success
  end

  test "should get edit" do
    get edit_saved_search_url(@saved_search)
    assert_response :success
  end

  test "should update saved_search" do
    patch saved_search_url(@saved_search), params: { saved_search: { name: @saved_search.name, query_string: @saved_search.query_string, user_id: @saved_search.user_id } }
    assert_redirected_to saved_search_url(@saved_search)
  end

  test "should destroy saved_search" do
    assert_difference('SavedSearch.count', -1) do
      delete saved_search_url(@saved_search)
    end

    assert_redirected_to saved_searches_url
  end
end
