class Portfolio < ApplicationRecord
  include Placeholder

  has_many :technologies
  accepts_nested_attributes_for :technologies

  validates_presence_of :title, :body, :main_image, :thumb_image
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(650,400)
    self.thumb_image ||= Placeholder.image_generator(350,200)
  end
end
