RSpec.describe 'filters' do

  context "markdown" do
    let(:faker) { ChipsFaker::Markdown.new() }

    it "is creating markdown" do
      liquid = Liquid::Template.parse(faker.layout)
      
      expect( liquid.render(faker.content).clear_line_spacing ).to eq( faker.rendered )
    end

  end

end