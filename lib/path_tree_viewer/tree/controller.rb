require 'path_tree_viewer/tree/populator'
require 'path_tree_viewer/tree/printer'

module PathTreeViewer
  module Tree
    class Controller

      def initialize(application)
        @application = application

        @populator = Populator.new(self)
        @printer   = Printer.new(self)
      end

      attr_reader :populator

      def_delegators :@application, :arguments, :options

      def execute
        @populator.execute
        @printer.execute
      end

    end
  end
end

