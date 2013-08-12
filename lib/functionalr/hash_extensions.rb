module Functionalr
  module HashExtensions
    def update_vals
      each do |k,v|
        self.store(k, (yield v))
      end
    end
  end
end

class Hash
  include Functionalr::HashExtensions
end
