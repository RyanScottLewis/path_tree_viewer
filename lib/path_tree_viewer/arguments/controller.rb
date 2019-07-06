require 'path_tree_viewer/arguments/populator'

# NOTE: This file only exists in case there are any more operations to perform on arguments in the
# future. It also exists to keep naming conventions consistant project-wide. If more operations are
# added in the future, remove this message.

module PathTreeViewer
  module Arguments
    class Controller

      def initialize(application)
        @application = application

        @populator = Populator.new(self)
      end

      def_delegators :@application, :arguments

      def execute
        @populator.execute
      end

    end
  end
end

