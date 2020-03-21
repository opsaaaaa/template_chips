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
    return self.map { |k, str| [k, str.to_nokogiri] }.to_h
  end
end

class Array
  def to_nokogiri
    return self.map {|val| val.to_nokogiri}
  end
end