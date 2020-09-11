

class ChipsFaker
  class Error < StandardError; end

  module Basic

    def self.html h1: '', pg: ''
      "
        <div>
          <h1>
            #{h1}
          </h1>

          <p>
            #{pg}
          </p>
        </div>          
      ".clear_line_spacing
    end
    

    def self.layout
      html h1: '{{ title }}', pg: '{{ body }}'
    end

    def self.template
      { 'title' => 'Title from Template!' }
    end
    
    def self.document
      { 'title' => 'Title from Document!', 'body' => 'lorem ipsium from document' }
    end

    def self.rendered
      html h1: 'Title from Template!', pg: 'lorem ipsium from document'
    end
  end
end