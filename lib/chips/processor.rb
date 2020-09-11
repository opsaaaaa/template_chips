
module Chips
  class Processor
    attr_reader :layout

    def initialize layout, *content
      self.layout = layout
      self.content = content
      return self
    end

    def render
      @layout.render @parsed_content 
    end

    def layout=layout
      @layout = Liquid::Template.parse(layout)
    end
    
    def content=content
      @content = content
      @parsed_content = merge( content )
    end
    
    def content
      @parsed_content
    end

    private

    def merge(content)
      {}.merge( *content.reverse )
    end

  end
end
