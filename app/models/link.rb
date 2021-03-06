class Link < ActiveRecord::Base
  attr_accessible :url, :title
  has_and_belongs_to_many :tags

  def self.persist(data = {})
    return nil if !data.is_a?(Hash)

    id = Scrub.str(data[:id], '', squish:true)
    url = Scrub.str(data[:url], 'url', squish:true)
    title = Scrub.str(data[:title], 'title', strip:true)
    tags = Scrub.str(data[:tags], 'tag', squish:true)

    obj = Link.find_by_id(id) || Link.find_or_create_by_url(url)
    obj.tags = tags.split.map{|n| Tag.persist(name:n)}.compact.uniq
    obj.update_attributes(url:url, title:title)
    obj
  end
end
