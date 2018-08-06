class PagesController < ApplicationController
  layout :resolve_layout

  def home
    @skills = Skill.all
    @jobs = Job.all
    @blogs = Blog.limit(3).includes(:topic)
    @portfolio_items = Portfolio.all.includes(:technologies)
  end

  def privacy
  end

  def admin
  end

  private

  def resolve_layout
    action_name == 'home' ? 'application' : 'blog';
  end
end
