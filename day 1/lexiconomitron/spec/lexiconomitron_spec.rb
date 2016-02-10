require 'Rspec'
require './Lexiconomitron.rb'
RSpec.describe "Lexiconomitron" do
    before :each do
      @lexi = Lexiconomitron.new
    end
    let(:array_strings) {["This", "is", "a", "boring", "test"]}
    let(:array_strings2){["if", "you", "wanna", "be", "my", "lover"]}
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scoTt!")).to eq("grea sco!")
      end
    it "return the array elements in reverse mode" do 
      expect(@lexi.shazam(array_strings)).to eq(["sihT", "si", "a", "gnirob", "tset"]) 
      end
    it "return the words with lenght <=3" do 
      expect(@lexi.oompa_lompa(array_strings2)).to eq(["if", "you", "be", "my"])
      end
end