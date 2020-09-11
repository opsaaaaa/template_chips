
module Chips
  class Processor
    attr_reader :layout ,:template, :document

    def initialize layout: ,template:, document:
      @layout = Liquid::Template.parse(layout)
      @template = template
      @document = document
      return self
    end

    def render
      @layout.render( @document.merge( @template ) )
    end

  end
end
