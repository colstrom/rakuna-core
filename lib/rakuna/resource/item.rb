require 'contracts'
require 'rakuna/resource/basic'

module Rakuna
  module Resource
    # Item Resources allow specific items to be fetched/deleted/replaced.
    class Item < Rakuna::Resource::Basic
      include Contracts

      Contract None => ArrayOf[String]
      def allowed_methods
        %w(HEAD GET PUT DELETE)
      end
    end
  end
end
