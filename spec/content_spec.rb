
RSpec.describe Chips do

  context "content" do

    it "merged correctly on init" do
      merged = ChipsFaker::Basic.document.merge( ChipsFaker::Basic.template )
      chips = Chips::Processor.new(
        '',
        ChipsFaker::Basic.template,
        ChipsFaker::Basic.document
      )
      
      expect( chips.content ).to eq( merged )
    end

    it "can be added after init"


  end


end