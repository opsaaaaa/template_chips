
module Chips
  class Processor
    attr_reader :layout, :content


    def initialize layout, *content
      @unparsed_content = []
      self.layout = layout
      self.add_content( *content )
      return self
    end

    def render
      @layout.render @content 
    end



    def layout=layout
      @layout = Liquid::Template.parse(layout)
    end
    
    def add_content *new_content
      @unparsed_content = new_content + @unparsed_content
      @content = merge( @unparsed_content )
    end



    private

    def merge(content)
      {}.merge( *content.reverse )
    end

  end
end
