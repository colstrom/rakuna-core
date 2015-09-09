require 'contracts'
require 'rakuna/provides/output'

module Rakuna
  module Provides
    module HTML
      include Contracts
      include Rakuna::Provides::Output

      Contract None => ArrayOf[Array]
      def content_types_provided
        @content_types_provided ||= super << ['text/html', :to_html]
      end

      Contract None => String
      def to_html
        output
      end
    end
  end
end
