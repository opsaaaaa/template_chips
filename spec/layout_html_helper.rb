require 'string_helper'

class FakeChip
  class Error < StandardError; end

  module Basic
    
    def self.html heading: {}, paragraph: {}
      heading[:id] ||= ''
      heading[:content] ||= ''
      paragraph[:id] ||= ''
      paragraph[:content] ||= ''
      return ('
        <div>
          <h1 id="'+heading[:id]+'">
            '+heading[:content]+'
          </h1>

          <p id="'+paragraph[:id]+'">
            '+paragraph[:content]+'
          </p>
        </div>          
      ').clear_line_spacing
    end
    
    def self.template 
      return html heading: {id: 'title'}, paragraph: {id: 'description'}
    end
    
    def self.document 
      return html heading: {id: 'title', content: 'Hello World!'}, paragraph: {id: 'description', content: 'lorem ipsum'}
    end

    def self.mortises
      return [
        { key: 'title', css: '#title' },
        { key: 'desc', css: '#description' }
      ]
    end

    def self.tenons
      return [
        { key: 'title', content: 'Hello World!' },
        { key: 'desc', content: 'lorem ipsum' }
      ]
    end
  
    def self.vue
      return html( 
        heading: {id: 'title', content: '{{ title }}'}, 
        paragraph: {id: 'description', content: '{{ desc }}'}
        )
    end

  end


end