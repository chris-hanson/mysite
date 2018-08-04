module DeviseRedirect
  extend ActiveSupport::Concern

  def after_sign_in_path_for(resource)
    blogs_path
  end

  def after_sign_up_path_for(resource)
    blogs_path
  end
end