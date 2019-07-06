require 'path_tree_viewer/options/controller'
require 'path_tree_viewer/arguments/controller'
require 'path_tree_viewer/tree/controller'

module PathTreeViewer
  class Application

    NAME    = "path_tree_viewer"
    VERSION = "0.0.1"

    def initialize(arguments)
      @arguments            = arguments
      @options_controller   = Options::Controller.new(self)
      @arguments_controller = Arguments::Controller.new(self)
      @tree_controller      = Tree::Controller.new(self)
    end

    attr_reader :arguments
    def_delegators :@options_controller, :options

    def execute
      @options_controller.execute
      @arguments_controller.execute
      @tree_controller.execute
    end

  end
end

