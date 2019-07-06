# Extend all classes with the Forwardable module
require 'forwardable'
Object.include(Forwardable)

require 'path_tree_viewer/application'

module PathTreeViewer

  def self.execute(arguments=ARGV.dup)
      instance = Application.new(arguments)

      instance.execute
    end

end

