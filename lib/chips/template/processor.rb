require "nokogiri"


module Chips
  module Template
    class Processor

      attr_reader :template, :mortises, :tenons, :html

      def initialize html, mortises:, tenons:
        @template = html
        @mortises = mortises
        @tenons = tenons
      end

      def generate
        return on_template do
          on_each_tenon do |key, content|
            on_each_mortise_element( key ) do |mortise| 
              mortise&.add_child( content )
            end
          end      
        end
      end

      private

      def on_each_mortise_element key, &block
        @page.css( self.mortises[key] ).each do |mortise_element|
          block.call mortise_element
        end
      end

      def on_each_tenon &block
        self.tenons.each do |key,content_html|
          block.call key, to_nokogiri( content_html )
        end
      end

      def on_template &block
        @page = to_nokogiri(self.template)
        block.call @page
        return @page.to_s
      end

      def to_nokogiri(html)
        return Nokogiri::HTML.fragment(html)
      end

    end
  end
end
