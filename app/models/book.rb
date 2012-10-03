class Book < ActiveRecord::Base
  has_and_belongs_to_many :tags

  def self.persist(data = {})
    return nil if !data.is_a?(Hash)
    
    id = data[:id]
    name = data[:name]
    tag_ids = data[:tag_ids]
    
    return nil if [id, name].any?{|v| v.class != String} || tag_ids.class != Array
    
    id = id.squish
    name = name.present? ? name.squish : "default"

    obj = Book.find_by_id(id) || Book.find_or_create_by_name(name)

    obj.name = name
    obj.tags = tag_ids.map{|n| Tag.find_by_id(n)}.compact.uniq
    obj.save

    obj
  end
  
end
