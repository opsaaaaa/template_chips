RSpec.describe ".to_nokogiri" do

  context "works on" do
    it "nil" do 
        expect(nil.to_nokogiri).to eq(nil)
    end

    it "string" do
        expect("<h1>String</h1>".to_nokogiri).to be_instance_of Nokogiri::HTML::DocumentFragment
    end

    it "array" do 
        arr = ["<h1>Heading</h1>","<p>Paragraph</p>" ]
        arr.to_nokogiri.each do |val|
            expect(val).to be_instance_of Nokogiri::HTML::DocumentFragment
        end
    end
    
    it "hash" do 
        hash = { heading: "<h1>Heading</h1>", paragraph: "<p>Paragraph</p>" }
        hash.to_nokogiri.each do |key, val|
            expect(val).to be_instance_of Nokogiri::HTML::DocumentFragment
        end
    end
  end
end