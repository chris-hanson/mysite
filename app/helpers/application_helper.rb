module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to 'Login', new_user_session_path, class: 'main-nav__link') +
      (link_to 'Register', new_user_registration_path, class: 'main-nav__link')
    else
      link_to 'Logout', destroy_user_session_path, {method: :delete, class: 'main-nav__link'}
    end
  end

  def footer_helper
    content_tag "footer" do
      "&copy; #{Time.now.year} | <strong>Chris Hanson</strong> all rights reserved".html_safe
    end
  end
end
