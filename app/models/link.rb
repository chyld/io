class Link < ActiveRecord::Base
  has_and_belongs_to_many :tags

  def self.persist(data = {})
    return nil if !data.is_a?(Hash)
    
    id = data[:id]
    url = data[:url]
    title = data[:title]
    tags = data[:tags]
    
    return nil if [id, url, title, tags].any?{|v| v.class != String}
    
    id = id.squish
    url = url.present? ? url.squish : "default"
    title = title.present? ? title.squish : "default"
    tags = tags.present? ? tags.squish.split : ["default"]

    obj = Link.find_by_id(id) || Link.find_or_create_by_url(url)

    obj.url = url
    obj.title = title
    obj.tags = tags.map{|n| Tag.persist({:id => "", :name => n})}.compact.uniq
    obj.save

    obj
  end
end
