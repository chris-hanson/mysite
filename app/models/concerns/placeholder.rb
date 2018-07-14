module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(w, h)
    "http://via.placeholder.com/#{w}x#{h}"
  end
end