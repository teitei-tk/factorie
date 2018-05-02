RSpec.describe Factorie do
  it "has a version number" do
    expect(Factorie::VERSION).not_to be nil
  end

  describe "factory_bot" do
    it "autoload FactoryBot" do
      expect {
        FactoryBot
      }.not_to raise_error
    end
  end

  describe "factory_girl" do
    specify "factory girl is warn message" do
      expect {
        FactoryGirl
      }.to output.to_stderr
    end

    it "autoload FactoryGirl" do
      expect {
        FactoryGirl
      }.not_to raise_error
    end
  end
end
