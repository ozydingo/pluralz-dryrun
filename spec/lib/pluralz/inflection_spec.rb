require "spec_helper"

describe Pluralz::Inflection do
  describe "splural?" do
    it "knows 'developers' is plural" do
      splural = Pluralz::Inflection.splural?("developers")
      expect(splural).to eq(true)
    end

    it "knows 'developer' is not plural" do
      splural = Pluralz::Inflection.splural?("developer")
      expect(splural).to eq(false)
    end
  end
end
