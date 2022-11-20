class Node
    attr_reader :data, :next_node
    attr_writer :data, :next_node

    def initialize(value)
        @data = value
        @next_node = nil
    end

end
