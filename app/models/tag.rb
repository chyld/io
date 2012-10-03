class Tag < ActiveRecord::Base
  has_and_belongs_to_many :links
  has_and_belongs_to_many :books

  def self.persist(data = {})
    return nil if !data.is_a?(Hash)
    
    id = data[:id]
    name = data[:name]
    
    return nil if [id, name].any?{|v| v.class != String}
    
    id = id.squish
    name = name.present? ? name.squish.downcase : "default"

    obj = Tag.find_by_id(id) || Tag.find_or_create_by_name(name)

    obj.name = name
    obj.save

    obj
  end
end
