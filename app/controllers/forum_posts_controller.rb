class ForumPostsController < ApplicationController
  before_action :set_forum_thread
  before_action :authenticate_user!

  def create
    @forum_post = @forum_thread.forum_posts.new forum_post_params
    @forum_post.user = current_user

    if @forum_post.save
      redirect_to @forum_thread, notice: "Successfully posted!"
    else
      redirect_to @forum_thread, alert: "Something went wrong!"
    end
  end

  private

    def set_forum_thread
      @forum_thread = ForumThread.find(params[:forum_thread_id])
    end

    def forum_post_params
      params.require(:forum_post).permit(:body)
    end
end
