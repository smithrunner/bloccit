class PostsController < ApplicationController
  def index
    @posts = CensorData.censor(Post.all)
  end

  def show
  end

  def new
  end

  def edit
  end
end
