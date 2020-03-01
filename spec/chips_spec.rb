RSpec.describe Chips do
  it "has a version number" do
    expect(Chips::VERSION).not_to be nil
  end

  context "Template::Processor" do
    let(:template_html) { FakeChip::Basic.template }

    let(:output_html) { FakeChip::Basic.document }

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
      
      expect( chips_output.clear_line_spacing ).to eq( output_html )
    end


    it "dose not fail with bad mortises" do
      chips_output = Chips::Template::Processor.new(
          template_html,
          mortises: {
              'title': '#bad-title',
              'desc': '#bad-description'
          },
          tenons: {
              'title': 'Hello World!',
              'desc': 'lorem ipsum'
          }
      ).generate()
      
      expect( chips_output.clear_line_spacing ).to eq( template_html )
    end
  end
end

