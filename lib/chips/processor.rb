
module Chips
  class Processor
    attr_reader :layout ,:template, :document

    def initialize layout: ,template:, document:
      @layout = Liquid::Template.parse(layout)
      @template = template
      @document = document
      return self
    end

    def content
      @document.merge @template 
    end

    def render
      @layout.render content 
    end

  end
end
