# :nodoc:
class ApplicationDecorator < SimpleDelegator
  def self.slugify(str)
    str.ljust(100).strip.gsub(/[\s\t\r\n\f]/, '_').gsub(/\W/, '').downcase
  end

  def self.titleize(str)
  	str.ljust(100).strip.gsub(/[\s\t\r\n\f]/, '_').gsub(/\W/, '').titleize
  end
end
