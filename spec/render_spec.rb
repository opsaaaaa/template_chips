
RSpec.describe Chips do

  context "a basic document" do

    let(:faker) { ChipsFaker::Basic.new }

    it "can be rendered" do
      doc = Chips::Processor.new(
        faker.layout,
        faker.template,
        faker.document
      ).render
      
      expect( doc ).to eq( faker.rendered )
    end

  end
end