
RSpec.describe Chips::Processor do

  context "content" do
    let(:faker) { ChipsFaker::Basic.new }


    it "merged correctly on init" do
      merged = faker.document.merge( faker.template )
      chips = Chips::Processor.new(
        '',
        faker.template,
        faker.document
      )
      
      expect( chips.content ).to eq( merged )
    end

    it "can be added after init" do
      doc = {'title'=>'doc', 'body'=>'lorem'}
      note = {'note'=>'sitation', 'title'=>'note'}
    
      chips = Chips::Processor.new('')
      chips.add_content(doc)
      chips.add_content(note)

      expect( chips.content ).to eq( doc.merge note )
    end


  end


end