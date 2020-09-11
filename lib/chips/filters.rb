module ChipsFilters
  def markdown(text)
    Kramdown::Document.new(text).to_html
    # Kramdown::Document.new('** **')
    # return "<p>Text: #{text}</p>"
  end
end

Liquid::Template.register_filter( ChipsFilters )