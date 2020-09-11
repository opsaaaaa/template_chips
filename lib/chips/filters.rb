module Chips
  module Filters
    def markdown(text)
      Kramdown::Document.new(text, input: 'GFM').to_html
    end
  end
end

Liquid::Template.register_filter( Chips::Filters )