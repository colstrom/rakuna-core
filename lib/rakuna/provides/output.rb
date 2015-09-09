require 'contracts'

module Rakuna
  module Provides
    module Output
      include Contracts

      Contract None => Array
      def content_types_provided
        @content_types_provided ||= []
      end

      Contract None => String
      def output
        ''
      end

      Contract None => Symbol
      def output_method
        @output_method ||= content_types_provided.select do |content_type|
          content_type.first == response.headers['Content-Type']
        end.flatten.last
      end
    end
  end
end
