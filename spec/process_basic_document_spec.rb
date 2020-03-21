RSpec.describe Chips do

  context "a basic document" do
    let(:template_html) { FakeChip::Basic.template }

    let(:output_html) { FakeChip::Basic.document }

    it "can be processed" do
      chips_output = Chips::Template::Processor.new(
        template_html,
        mortises: FakeChip::Basic.mortises,
        tenons: FakeChip::Basic.tenons
      ).generate
      
      expect( chips_output.clear_line_spacing ).to eq( output_html )
    end


    it "dose not fail with bad mortises" do
      chips_output = Chips::Template::Processor.new(
        template_html,
        mortises: {
            'title': '#bad-title',
            'desc': '#bad-description'
        },
        tenons: FakeChip::Basic.tenons
      ).generate()
      
      expect( chips_output.clear_line_spacing ).to eq( template_html )
    end
  end
end

