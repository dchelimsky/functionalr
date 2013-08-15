require 'spec_helper'

describe Functionalr::HashExtensions do
  describe "#update_vals" do
    it "ingores empty hash" do
      assert { {}.update_vals {|v|} == {} }
    end

    it "preserves the original hash" do
      orig = {a: 1, b: 2, c: 3}
      processed = orig.
                    reject {|k,v| v > 2}.
                    update_vals {|v| v * 2}
      assert { processed == {a: 2, b: 4} }
    end

    it "replaces each val with the result of the submitted block" do
      assert { {a: 1, b: 2}.update_vals {|v| v * 2} == {a: 2, b: 4} }
    end

    it "'pipelines' naturally" do
      orig = {a: 1, b: 2, c: 3}
      processed = orig.
                    reject {|k,v| v > 2}.
                    update_vals {|v| v * 2}
      assert { processed == {a: 2, b: 4} }
    end

    it "preserves the original hash" do
      orig = {a: 1, b: 2}
      orig.update_vals {|v| v * 2}
      assert { orig == {a: 1, b: 2} }
    end
  end
end
