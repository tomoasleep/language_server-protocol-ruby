module LanguageServer
  module Protocol
    module Interface
      #
      # General paramters to to regsiter for a capability.
      #
      class Registration
        def initialize(id:, method:, register_options: nil)
          @attributes = {}

          @attributes[:id] = id
          @attributes[:method] = method
          @attributes[:registerOptions] = register_options if register_options

          @attributes.freeze
        end

        #
        # The id used to register the request. The id can be used to deregister
        # the request again.
        #
        # @return [string]
        def id
          attributes.fetch(:id)
        end

        #
        # The method / capability to register for.
        #
        # @return [string]
        def method
          attributes.fetch(:method)
        end

        #
        # Options necessary for the registration.
        #
        # @return [any]
        def register_options
          attributes.fetch(:registerOptions)
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
