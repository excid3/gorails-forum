require 'test_helper'

class ForumThreadsControllerTest < ActionController::TestCase
  setup do
    @forum_thread = forum_threads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forum_threads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forum_thread" do
    assert_difference('ForumThread.count') do
      post :create, forum_thread: { subject: @forum_thread.subject, user_id: @forum_thread.user_id }
    end

    assert_redirected_to forum_thread_path(assigns(:forum_thread))
  end

  test "should show forum_thread" do
    get :show, id: @forum_thread
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forum_thread
    assert_response :success
  end

  test "should update forum_thread" do
    patch :update, id: @forum_thread, forum_thread: { subject: @forum_thread.subject, user_id: @forum_thread.user_id }
    assert_redirected_to forum_thread_path(assigns(:forum_thread))
  end

  test "should destroy forum_thread" do
    assert_difference('ForumThread.count', -1) do
      delete :destroy, id: @forum_thread
    end

    assert_redirected_to forum_threads_path
  end
end
