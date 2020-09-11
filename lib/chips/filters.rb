module ChipsFilters
  def markdown(text)
    Kramdown::Document.new(text, input: 'GFM').to_html
  end
end

Liquid::Template.register_filter( ChipsFilters )