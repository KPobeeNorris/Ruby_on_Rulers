RSpec.describe Rulers do

  let(:phrase_one) { "SuperWOman"}
  let(:phrase_two) { "C3P0"}
  let(:phrase_three) { "Rulers::Awesomeness" }
  let(:phrase_four)  { "something-new"}

  it "will insert an underscore where there are two or more uppercase letters in a row" do
    expect(subject.to_underscore(phrase_one)).to eq "super_w_oman"
  end

  it "will change lowercase-number-uppercase to lowercasenumber_uppercase " do
    expect(subject.to_underscore(phrase_two)).to eq "c3_p0"
  end

  it "will replace all double-colons with slashes" do
    expect(subject.to_underscore(phrase_three)).to eq "rulers/awesomeness"
  end

  it "will convert all dashes into underscore" do
    expect(subject.to_underscore(phrase_four)).to eq "something_new"
  end

end
