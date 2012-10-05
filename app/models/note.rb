class Note < ActiveRecord::Base
  attr_accessible :info
  has_and_belongs_to_many :tags

  def self.persist(data = {})
    return nil if !data.is_a?(Hash)

    id = Scrub.str(data[:id], '', squish:true)
    info = Scrub.str(data[:info], 'info')
    tags = Scrub.str(data[:tags], 'tag', squish:true)

    obj = Note.find_by_id(id) || Note.create(info:info)
    obj.tags = tags.split.map{|n| Tag.persist(name:n)}.compact.uniq
    obj.update_attributes(info:info)
    obj
  end
end
