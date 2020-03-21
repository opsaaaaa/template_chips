require "nokogiri"

module ChipsNokogiri
  private
  def to_nokogiri(html)
    return Nokogiri::HTML.fragment(html)
  end
  
  def each_match css:, &block
    @page.css( css ).each do |element|
      block.call element
    end
  end

  def each_fragment collection, &block
    if collection.is_a(Hash)
      each_hash_fragment
    else
      each_array_fragment
    end
  end

  def each_hash_fragment collection, &block
    collection.each do |key,content_html|
      block.call key, to_nokogiri( content_html )
    end
  end

  def each_array_fragment collection, &block
    collection.each do |content_html|
      block.call to_nokogiri( content_html )
    end
  end

end