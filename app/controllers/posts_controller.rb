class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def voteup
    @post = Post.find(params[:id])

    @post.upvote_by current_user
    red
  end

end
