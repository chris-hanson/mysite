class PagesController < ApplicationController
  def home
    @skills = Skill.all
    @jobs = Job.all
    @blogs = Blog.limit(3).includes(:topic)
  end
end
