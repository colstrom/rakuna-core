require 'contracts'
require 'rakuna/accepts/input'
require 'rakuna/resource/basic'

module Rakuna
  module Resource
    # Action Resources perform tasks. They return no content, and only respond to POST.
    class Action < Rakuna::Resource::Basic
      include Contracts

      Contract None => ArrayOf[String]
      def allowed_methods
        %w(POST)
      end

      Contract None => Or[true, Num]
      def process_post
        execute
      end
    end
  end
end
