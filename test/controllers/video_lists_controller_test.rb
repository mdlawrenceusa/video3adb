require 'test_helper'

class VideoListsControllerTest < ActionController::TestCase
  setup do
    @video_list = video_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_list" do
    assert_difference('VideoList.count') do
      post :create, video_list: { date: @video_list.date, speaker: @video_list.speaker, title: @video_list.title, url_es: @video_list.url_es, url_msg: @video_list.url_msg }
    end

    assert_redirected_to video_list_path(assigns(:video_list))
  end

  test "should show video_list" do
    get :show, id: @video_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video_list
    assert_response :success
  end

  test "should update video_list" do
    patch :update, id: @video_list, video_list: { date: @video_list.date, speaker: @video_list.speaker, title: @video_list.title, url_es: @video_list.url_es, url_msg: @video_list.url_msg }
    assert_redirected_to video_list_path(assigns(:video_list))
  end

  test "should destroy video_list" do
    assert_difference('VideoList.count', -1) do
      delete :destroy, id: @video_list
    end

    assert_redirected_to video_lists_path
  end
end
