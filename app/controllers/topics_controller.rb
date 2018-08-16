class TopicsController < ApplicationController
  layout 'blog'

  def show
    @topics = Topic.all
    @blogs = @topics.find(params[:id]).blogs.page(params[:page]).per(5)
    render 'blogs/index'
  end
end
