class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new

  end

  def create
    params
    Post.create(title: params["post"]["title"], description: params["post"]["description"])
    redirect_to :posts
  end
  
end
