module PathTreeViewer
  module Options
    class Processor

      def initialize(controller)
        @controller = controller
      end

      def_delegators :@controller, :arguments, :options, :parser

      def execute
        parse_options
        check_help_option
        check_version_option
      end

      protected

      def parse_options
        parser.parse!(arguments)
      end

      def check_help_option
        return unless options.help

        puts help
        exit
      end

      def check_version_option
        return unless options.version

        content = "#{Application::NAME} v#{Application::VERSION}"

        puts content
        exit
      end

      def help
        parser.to_s
      end

    end
  end
end

