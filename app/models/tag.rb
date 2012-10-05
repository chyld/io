class Tag < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :links
  has_and_belongs_to_many :books
  has_and_belongs_to_many :notes

  def self.persist(data = {})
    return nil if !data.is_a?(Hash)

    id = Scrub.str(data[:id], '', squish:true)
    name = Scrub.str(data[:name], 'tag', minify:true)

    obj = Tag.find_by_id(id) || Tag.find_or_create_by_name(name)
    obj.update_attributes(name:name)
    obj
  end
end
