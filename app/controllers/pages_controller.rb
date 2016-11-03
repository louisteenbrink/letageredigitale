class PagesController < ApplicationController


  def home
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end
end
