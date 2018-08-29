class PagesController < ApplicationController
  layout :resolve_layout

  def home
    @skills = Skill.all
    @jobs = Job.all
    @blogs = Blog.limit(3).includes(:topic)
    @portfolio_items = Portfolio.by_position.includes(:technologies)
    @contact = Contact.new(params[:contact])
  end

  def privacy
  end

  def create_contact
    @contact = Contact.new(params[:contact])
    @contact.request = request

    respond_to do |format|
      if @contact.deliver
        @contact = Contact.new
        format.html { redirect_to root_path, notice: "Thank you for your message, I'll be in touch."}
      else
        format.html { redirect_to root_path, notice: 'Sorry, failed to send email. Please try later or contact me directly.' }
      end
    end
  end

  private

  def resolve_layout
    action_name == 'home' ? 'application' : 'blog';
  end
end
