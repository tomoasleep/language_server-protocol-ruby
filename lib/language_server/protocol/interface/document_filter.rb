module LanguageServer
  module Protocol
    module Interface
      class DocumentFilter
        def initialize(language: nil, scheme: nil, pattern: nil)
          @attributes = {}

          @attributes[:language] = language if language
          @attributes[:scheme] = scheme if scheme
          @attributes[:pattern] = pattern if pattern

          @attributes.freeze
        end

        #
        # A language id, like `typescript`.
        #
        # @return [string]
        def language
          attributes.fetch(:language)
        end

        #
        # A Uri [scheme](#Uri.scheme), like `file` or `untitled`.
        #
        # @return [string]
        def scheme
          attributes.fetch(:scheme)
        end

        #
        # A glob pattern, like `*.{ts,js}`.
        #
        # @return [string]
        def pattern
          attributes.fetch(:pattern)
        end

        attr_reader :attributes

        def to_hash
          attributes
        end

        def to_json(*args)
          to_hash.to_json(*args)
        end
      end
    end
  end
end
