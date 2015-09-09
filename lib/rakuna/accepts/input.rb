require 'contracts'

module Rakuna
  module Accepts
    module Input
      include Contracts

      Contract None => Maybe[String]
      def input
        @input ||= request.body.to_s
      end
    end
  end
end
