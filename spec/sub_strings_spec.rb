require './spec/spec_helper'
require './lib/sub_strings'
RSpec.describe 'Sub String' do
  describe 'find parts in dictionary' do
    let(:dictionary) do
      ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    end
    it 'finds single word and parts' do
      string = 'below'
      expect(sub_string_finder(string, dictionary)).to eq({"below" => 1, "low" => 1})
    end
  end
end