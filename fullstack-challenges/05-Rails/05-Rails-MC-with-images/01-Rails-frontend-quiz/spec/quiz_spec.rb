require "quiz"

describe "quiz" do
  describe "#rails_app_with_wepback" do
    it "should return the correct answer" do
      expect(rails_app_with_wepback).to eq("rails new mister-cocktail --webpack")
    end
  end

  describe "#modern_javascript" do
    it "should return the correct answer" do
      correct_answers = ["javascript_pack_tag 'application'", "<%= javascript_pack_tag 'application' %>"]
      expect(correct_answers).to include(modern_javascript)
    end
  end

  describe "#add_a_npm_package" do
    it "should return the correct answer" do
      expect(add_a_npm_package).to eq('yarn add sweetalert')
    end
  end
end

