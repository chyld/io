class Book < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :tags

  def self.persist(data = {})
    return nil if !data.is_a?(Hash)

    id = Scrub.str(data[:id], '', squish:true)
    name = Scrub.str(data[:name], 'book', minify:true)
    tag_ids = data[:tag_ids].is_a?(Array) ? data[:tag_ids] : []

    obj = Book.find_by_id(id) || Book.find_or_create_by_name(name)
    obj.tags = tag_ids.map{|n| Tag.find_by_id(n)}.compact.uniq
    obj.update_attributes(name:name)
    obj
  end
  
end
