require "nokogiri"

module Chips
  module Template
    class Processor
      include Chips::Page
      attr_reader :template, :mortises, :tenons, :html

      def initialize html, mortises:, tenons:
        @template = html
        @mortises = mortises
        @tenons = tenons
        @page = html.to_nokogiri
      end

      def generate
        on_each_tenon do |key, content|
          on_each_mortise_element( key ) do |mortise| 
            mortise&.add_child( content )
          end
        end      
        return @page.to_s
      end

      private

      def on_each_mortise_element key, &block
        each_match( css: self.mortises[key] )  do |mortise_element|
          block.call mortise_element
        end
      end

      def on_each_tenon &block
        self.tenons.to_nokogiri.each do |key, content|
          block.call key, content
        end
      end

    end
  end
end
