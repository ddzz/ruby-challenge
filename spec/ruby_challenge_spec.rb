RSpec.describe "RubyChallenge" do
  let(:test_var) { "me" }

  subject { RubyChallenge.new(test_var) }

  describe "::new" do
    context "with valid input" do
      it "creates a RubyChallenge object with correct attributes" do
        expect(subject.test1).to eql(test_var)
      end
    end
  end

  describe "#hello" do
    context "for our case" do
      it "returns true" do
        expect(subject.hello).to eql("This is me")
      end
    end
  end
end
