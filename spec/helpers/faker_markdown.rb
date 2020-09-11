
module ChipsFaker

  class Markdown

    def markdown
      '**This is bold** `This is code`'
    end

    def html content
      " <div>
          #{content}
        </div>          
      ".clear_line_spacing
    end

    def layout
      html "{{ markdown | markdown }}"
    end

    def content
      { 'markdown' => markdown }
    end

    def rendered
      html kramdown( markdown )
    end

    def kramdown text
      Kramdown::Document.new(text).to_html
    end

  end
end