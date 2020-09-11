
RSpec.describe Chips do

  context "a basic document" do

    it "can be rendered" do
      doc = Chips::Processor.new(
        layout: ChipsFaker::Render.layout,
        template: ChipsFaker::Render.template,
        document: ChipsFaker::Render.document
      ).render
      
      expect( doc ).to eq( ChipsFaker::Render.rendered )
    end

  end
end