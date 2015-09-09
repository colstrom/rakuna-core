require 'contracts'
require 'webmachine/resource'
require 'rakuna/accepts/input'
require 'rakuna/provides/output'

module Rakuna
  module Resource
    class Basic < Webmachine::Resource
      include Contracts
      include Rakuna::Accepts::Input
      include Rakuna::Provides::Output

      Contract None => ArrayOf[String]
      def allowed_methods
        %w(HEAD GET)
      end
    end
  end
end
