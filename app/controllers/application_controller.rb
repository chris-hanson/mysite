class ApplicationController < ActionController::Base
  include SetTitle
  include LayoutByResource
  include DeviseWhitelist
  include DeviseRedirect
  include CurrentUserConcern
end
