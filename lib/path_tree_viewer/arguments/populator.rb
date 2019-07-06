module PathTreeViewer
  module Arguments
    class Populator

      def initialize(controller)
        @controller = controller
      end

      def_delegators :@controller, :arguments

      def execute
        return unless stdin_given?

        prepend_stdin_arguments
      end

      protected

      def stdin_given?
        !STDIN.tty?
      end

      def prepend_stdin_arguments
        lines = STDIN.read.lines.map(&:chomp)

        arguments.unshift(*lines)
      end

    end
  end
end

