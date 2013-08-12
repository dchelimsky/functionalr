module Functionalr
  class ImmutableStruct
    module InitializerExtension
      def initialize(*)
        super
        freeze
      end
    end
    def self.new(*args, &block)
      Struct.new(*args, &block).class_eval do
        include InitializerExtension
      end
    end
  end
end

