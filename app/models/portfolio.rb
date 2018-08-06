class Portfolio < ApplicationRecord
  include Placeholder

  has_many :technologies
  accepts_nested_attributes_for :technologies

  validates_presence_of :title, :body, :main_image, :thumb_image
  after_initialize :set_defaults

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  def self.by_position
    order("position ASC")
  end

  def set_defaults
    self.main_image ||= Placeholder.image_generator(650,400)
    self.thumb_image ||= Placeholder.image_generator(350,200)
  end
end
