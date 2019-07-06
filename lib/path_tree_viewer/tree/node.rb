module PathTreeViewer
  module Tree
    class Node

      def initialize(contents=nil)
        @contents = contents
        @children = []
      end

      attr_accessor :contents
      attr_reader   :children

      def create(contents)
        #child = self.class.new(contents)

        #@children << child
        #child

        self.class.new(contents).tap { |child| @children << child }
      end

      def find(contents)
        @children.find { |child| child.contents == contents }
      end

      def find_or_create(contents)
        find(contents) || create(contents)
      end

    end
  end
end

