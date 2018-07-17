require "./spec_helper"

describe Rabbit::Converter do
  # TODO: Write tests

  it "converts from unicode to zawgyi correctly" do
    converter = Rabbit::Converter.new
    parsed = JSON.parse(File.read("spec/sample.json"))
    parsed["zg"].as_a.each_with_index do |zgstring, index|
      zgstring.should eq converter.uni2zg(parsed["uni"][index].as_s)
    end
  end

  it "converts from zawgyi to unicode correctly" do
    converter = Rabbit::Converter.new
    parsed = JSON.parse(File.read("spec/sample.json"))
    parsed["uni"].as_a.each_with_index do |unistring, index|
      unistring.should eq converter.zg2uni(parsed["zg"][index].as_s)
    end
  end
end
