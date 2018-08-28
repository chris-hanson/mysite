class PagesController < ApplicationController
  layout :resolve_layout

  def home
    @skills = Skill.all
    @jobs = Job.all
    @blogs = Blog.limit(3).includes(:topic)
    @portfolio_items = Portfolio.all.includes(:technologies)
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
        format.html { render 'index'}
        format.js   { flash.now[:success] = "Thank you for your message. I'll get back to you soon!" }
      else
        format.html { render 'index' }
        format.js   { flash.now[:error] = "Message did not send." }
      end
    end
  end

  private

  def resolve_layout
    action_name == 'home' ? 'application' : 'blog';
  end
end
