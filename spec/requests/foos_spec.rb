require 'rails_helper'

describe Foo, type: :model do
  context "valid Foo" do
    it "created Foo will be persistend, have a name, and be Found" do
      foo=Foo.create(:name=>"test")
      expect(foo).to be_persisted
      expect(foo.name).to eq("test")
      expect(Foo.find(foo.id)).to_not be_nil
      # binding.pry
    end
  end
end
