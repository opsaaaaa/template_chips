RSpec.describe Chips do
  it "has a version number" do
    expect(Chips::VERSION).not_to be nil
  end

  context "Template::Processor" do
    let(:template_html) {'
      <div>
        <h1>
          <div id="title"></div>
        </h1>

        <p>
          <span id="description"></span>   
        </p>
      </div>    
    '}

    let(:output_html) {'
      <div>
        <h1>
          Hello World!
        </h1>

        <p>
          lorem ipsum
        </p>
      </div>
    '}

    it "can process a document" do
      chips_output = Chips::Template::Processor.new(
          template_html,
          mortises: {
              'title': '#title',
              'desc': '#description'
          },
          tenons: {
              'title': 'Hello World!',
              'desc': 'lorem ipsum'
          }
      ).generate()
      
      expect( chips_output.gsub(white_space ,'') ).to eq( output_html.gsub(white_space,'') )
    end
  end
end

def white_space
  return /(^\s+|\s+$)/
end
