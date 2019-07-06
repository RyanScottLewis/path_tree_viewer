module PathTreeViewer
  module Options
    class Definer

      def initialize(controller)
        @controller = controller
      end

      def_delegators :@controller, :options, :parser

      def execute
        setup_banner
        define_options
      end

      protected

      def setup_banner # TODO: This is more of an Application thing. The description, at least.
        parser.banner = <<~BANNER
          Usage: path_tree_viewer [OPTIONS] PATHS...

          Displays a given list of paths and displays them as a tree.
          This application does not interact with the filesystem in any way.
          It's simply a string/text processor.

          ARGUMENTS

              PATHS                            Paths to display as a tree
                                               Paths can also be read from STDIN

          OPTIONS
        BANNER
      end

      def define_options
        spec = {
          help:      ['--help',                '-h', 'Show help'],
          version:   ['--version',             '-v', 'Show version'],
          delimiter: ['--delimiter VALUE',     '-d', "Path delimiter (default: '#{options.delimiter}')"],
          indent_char: ['--indent-char VALUE', '-I', "Character to use for indentation (default: '#{options.indent_char}')"],
          indent_size: ['--indent-size VALUE', '-i', "Size for each indentation level (default: '#{options.indent_size}')"],
        }

        parser.on(*spec[:help])        {         options.help        = true  }
        parser.on(*spec[:version])     {         options.version     = true  }
        parser.on(*spec[:delimiter])   { |value| options.delimiter   = value }
        parser.on(*spec[:indent_char]) { |value| options.indent_char = value }
        parser.on(*spec[:indent_size]) { |value| options.indent_size = value.to_i }
      end

    end
  end
end

