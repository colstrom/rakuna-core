require 'contracts'
require 'rakuna/resource/basic'

module Rakuna
  module Resource
    # Collection Resources contain multiple resources, and can be added to.
    class Collection < Rakuna::Resource::Basic
      include Contracts

      Contract None => ArrayOf[String]
      def allowed_methods
        %w(HEAD GET POST)
      end

      Contract None => Bool
      def post_is_create?
        true
      end
    end
  end
end
