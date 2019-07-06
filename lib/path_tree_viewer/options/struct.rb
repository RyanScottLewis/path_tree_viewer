module PathTreeViewer
  module Options
    class Struct < ::Struct.new(:help, :version, :delimiter, :indent_char, :indent_size)

      def initialize
        self.delimiter   = File::SEPARATOR
        self.indent_char = ' '
        self.indent_size = 2
      end

    end
  end
end

