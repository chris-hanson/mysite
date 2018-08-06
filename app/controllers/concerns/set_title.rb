module SetTitle
  extend ActiveSupport::Concern

  included do
    before_action :set_title
  end

  def set_title
    @page_title = "Chris Hanson | My Portfolio Website"
  end
end