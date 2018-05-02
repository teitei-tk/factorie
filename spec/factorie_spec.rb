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
    context "autoload factory_girl" do
      it "suspend factory_girl" do
        expect {
          FactoryGirl
        }.to raise_error(RuntimeError)
      end
    end
  end
end
