require 'contracts'
require 'rakuna/provides/output'

module Rakuna
  module Provides
    module Text
      include Contracts
      include Rakuna::Provides::Output

      Contract None => ArrayOf[Array]
      def content_types_provided
        @content_types_provided ||= super << ['text/plain', :to_text]
      end

      Contract None => String
      def to_text
        output
      end
    end
  end
end
