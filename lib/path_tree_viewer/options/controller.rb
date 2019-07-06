require 'path_tree_viewer/options/struct'
require 'path_tree_viewer/options/parser'
require 'path_tree_viewer/options/definer'
require 'path_tree_viewer/options/processor'

module PathTreeViewer
  module Options
    class Controller

      def initialize(application)
        @application = application
        @options     = Options::Struct.new
        @parser      = Options::Parser.new
        @definer     = Options::Definer.new(self)
        @processor   = Options::Processor.new(self)
      end

      attr_reader :options
      attr_reader :parser

      def_delegators :@application, :arguments

      def execute
        @definer.execute
        @processor.execute
      end

    end
  end
end

