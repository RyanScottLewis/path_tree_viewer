require 'path_tree_viewer/tree/node'

module PathTreeViewer
  module Tree
    class Populator

      def initialize(controller)
        @controller = controller
        @root       = Node.new
      end

      attr_reader :root

      def_delegators :@controller, :options, :arguments

      def execute
        arguments.each do |path|
          find_or_create(path)
        end
      end

      def find_or_create(path)
        partials = path.split(options.delimiter)

        partials.inject(@root) do |node, partial|
          node.find_or_create(partial)
        end
      end

    end
  end
end

