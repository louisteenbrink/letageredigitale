class PagesController < ApplicationController


  def home
    @posts = Post.all
    @tags = Tag.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def from_tag
    @posts = Post.joins(:tags).where(tags: { id: params[:tag_id] })
    respond_to do |format|
      format.js
    end
  end

end
