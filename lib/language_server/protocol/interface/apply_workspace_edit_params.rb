module LanguageServer
  module Protocol
    module Interface
      class ApplyWorkspaceEditParams
        def initialize(edit:)
          @attributes = {}

          @attributes[:edit] = edit

          @attributes.freeze
        end

        #
        # The edits to apply.
        #
        # @return [WorkspaceEdit]
        def edit
          attributes.fetch(:edit)
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
