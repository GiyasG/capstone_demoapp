require 'rails_helper'

describe Foo, type: :model do

    context "created Foo" do
      let(:foo) {Foo.create(:name=>"test")}
      # before(:all) do
      #   @foo=Foo.create(:name=>"test")
      # end
      # after(:all) do
      #   @foo.delete
      # end
      # before(:each) do
      #   @foo=Foo.create(:name=>"test")
      # end

      # it "created Foo will be persistend, have a name, and be Found" do
      #   expect(@foo).to be_persisted
      #   expect(@foo.name).to eq("test")
      #   expect(Foo.find(@foo.id)).to_not be_nil
      #   # binding.pry
      # end


      # it "created Foo will be persistend" do
      #   expect(foo).to be_persisted
      #   # binding.pry
      # end
      # it "created Foo will have a name" do
      #   expect(foo.name).to eq("test")
      #   # binding.pry
      # end
      # it "created Foo will be Found" do
      #   expect(Foo.find(foo.id)).to_not be_nil
      #   # binding.pry
      # end

      it {expect(foo).to be_persisted}
      it {expect(foo.name).to eq("test")}
      it {expect(Foo.find(foo.id)).to_not be_nil}
        # binding.pry
      end

      context "created Foo (subject)" do
      subject {Foo.create(:name=>"test")}
      it {is_expected.to be_persisted}
      it {expect(subject.name).to eq("test")}
      it {expect(Foo.find(subject.id)).to_not be_nil}
        # binding.pry
      end

end
