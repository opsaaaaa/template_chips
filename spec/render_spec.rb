
RSpec.describe Chips do

  context "a basic document" do

    it "can be rendered" do
      doc = Chips::Processor.new(
        layout: ChipsFaker::Basic.layout,
        template: ChipsFaker::Basic.template,
        document: ChipsFaker::Basic.document
      ).render
      
      expect( doc ).to eq( ChipsFaker::Basic.rendered )
    end

  end
end