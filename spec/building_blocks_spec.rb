#test string split into character seprated downncased array
require './lib/ruby_building_blocks.rb'

describe "#ceasarCipher" do

    it "works with one letter" do
        expect(ceasarCipher("a", 2)).to eql("c")
    end

    it "works with one word" do
        expect(ceasarCipher("hello", 3)).to eql("khoor")
    end

    it "works with multiple words" do
        expect(ceasarCipher("hi man", 2)).to eql("jk ocp")
    end

    it "removes whitespace" do
        expect(ceasarCipher("hi ", 2)).to eql("jk")
    end

    it "makes words downcase" do
        expect(ceasarCipher("Hi", 2)).to eql("jk")
    end

    it "works with special characters" do
        expect(ceasarCipher("Hi!", 2)).to eql("jk!")
    end
end
