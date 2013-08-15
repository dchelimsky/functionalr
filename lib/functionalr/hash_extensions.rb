module Functionalr
  module HashExtensions
    def update_vals
      reduce({}) {|h,(k,v)| h[k] = yield v; h}
    end
  end
end

class Hash
  include Functionalr::HashExtensions
end
