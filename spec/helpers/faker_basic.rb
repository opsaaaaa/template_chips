

module ChipsFaker

  class Basic

    def html h1: '', pg: ''
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
    

    def layout
      html h1: '{{ title }}', pg: '{{ body }}'
    end

    def template
      { 'title' => 'Title from Template!' }
    end
    
    def document
      { 'title' => 'Title from Document!', 'body' => 'lorem ipsium from document' }
    end

    def rendered
      html h1: 'Title from Template!', pg: 'lorem ipsium from document'
    end
  end
end