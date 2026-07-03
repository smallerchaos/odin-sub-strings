require './spec/spec_helper'
require './lib/sub_strings'
RSpec.describe 'Sub String' do
  describe 'find parts in dictionary' do
    let(:dictionary) do
      ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    end
    xit 'finds words in another word' do
      string = 'below'
      expected_output = {"below" => 1, "low" => 1}
      expect(sub_string_finder(string, dictionary)).to eq(expected_output)
    end

    it 'finds words in a sentence' do
    string = "Howdy partner, sit down! How's it going?"
    expected_output = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
    expect(sub_string_finder(string, dictionary)).to eq(expected_output)
    end
  end
end