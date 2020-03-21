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
    return self.transform_values { |v| v.to_nokogiri }
  end
end

class Array
  def to_nokogiri
    return self.map {|val| val.to_nokogiri}
  end
end