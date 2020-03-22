require "nokogiri"

module Chips
  module Vue
    class Processor
      include Chips::Page
      attr_reader :template, :mortises, :tenons, :html

      def initialize html, mortises:, tenons:
        @template = html
        @mortises = mortises
        @page = to_nokogiri(self.template)
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
        each_match css: self.mortises[key] do
          block.call mortise_element
        end
      end

      def on_each_tenon &block
        self.tenons.each do |key,content_html|
          block.call key, to_nokogiri( content_html )
        end
      end

    end
  end
end
