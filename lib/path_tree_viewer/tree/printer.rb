module PathTreeViewer
  module Tree
    class Printer

      def initialize(controller)
        @controller  = controller
      end

      def_delegators :@controller, :options, :populator
      def_delegators :populator, :root

      def execute
        print_node(root)
      end

      protected

      def print_node(node, indent_level=0)
        indent = options.indent_char * options.indent_size * indent_level

        contents   = node.contents
        contents ||= options.delimiter

        puts "#{indent}#{contents}"

        node.children.each do |child|
          print_node(child, indent_level + 1)
        end
      end

    end
  end
end

