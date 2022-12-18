class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # def new
  # end

  def create
    Post.create(content: params[:content])
    redirecto_to action: :index
  end
end
