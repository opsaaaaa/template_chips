
RSpec.describe Chips do

  context "the content" do

    it "is merged correctly" do
      merged = ChipsFaker::Basic.document.merge( ChipsFaker::Basic.template )
      chips = Chips::Processor.new(
        '',
        ChipsFaker::Basic.template,
        ChipsFaker::Basic.document
      )
      
      expect( chips.content ).to eq( merged )
    end

  end
end