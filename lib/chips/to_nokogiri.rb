class NilClass
  def to_nokogiri
    return self
  end
end
class String
  def to_nokogiri
    return Nokogiri::HTML.fragment(self)
  end
end
class Hash
  def to_nokogiri
    result = {}
    self.each do |key,val|
      result[key] = val.to_nokogiri
    end
    return result
  end
end
class Array
  def to_nokogiri
    return self.map {|val| val.to_nokogiri}
  end
end