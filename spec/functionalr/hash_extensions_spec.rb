require 'spec_helper'

describe Functionalr::HashExtensions do
  describe "#update_vals" do
    it "ingores empty hash" do
      assert { {}.update_vals {|v|} == {} }
    end

    it "yields each val" do
      yielded = []
      {a: 1, b: 2}.update_vals {|v| yielded << v}
      assert { yielded == [1, 2] }
    end

    it "replaces each val with the result of the submitted block" do
      orig = {a: 1, b: 2}
      modified = orig.update_vals {|v| v * 2}
      assert { modified == {a: 2, b: 4} }
    end
  end
end
