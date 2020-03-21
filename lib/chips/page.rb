require "nokogiri"

module Chips
  module Page
    private
    
    def each_match css:, &block
      @page.css( css ).each do |element|
        block.call element
      end
    end
  end

end
