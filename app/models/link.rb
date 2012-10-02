class Link < ActiveRecord::Base
  attr_accessible :title, :url
  has_and_belongs_to_many :tags
  validates :title, :url, :presence => true
end
