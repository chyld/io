class Scrub

  def self.str(s, default, options={})
    return default if !s.is_a?(String)
    s = s.presence || default
    s = s.strip if options[:strip]
    s = s.squish if options[:squish]
    s = s.squish.downcase if options[:minify]
    s = yield(s) if block_given?
    s
  end

end
