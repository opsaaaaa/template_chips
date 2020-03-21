RSpec.describe Chips do

  context "chips vue" do
    let(:template_html) { FakeChip::Basic.template }

    let(:output_html) { FakeChip::Basic.document }

    it "can be converted to vue"
    # it "can be converted to vue" do
    #   chips_output = Chips::Template::Vue.new(
    #     template_html, 
    #     FakeChip::Basic.mortises
    #   ).generate
      
    #   expect( chips_output.clear_line_spacing ).to eq( output_html )
    # end


  end
end

