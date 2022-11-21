require_relative './node'

class LinkedList
    attr_reader :head, :tail, :size
    attr_writer :head, :tail, :size

    def initialize
        @head = nil
        @tail = nil
        @size = 0
    end

    def head
        return @head.data
    end

    def tail
        return @tail.data
    end
    
    def append(val)
        newNode = Node.new(val)
        if @head.nil?
            @head = newNode
        elsif @tail == nil
            @tail = newNode
            @head.next_node = newNode
        else
            @tail.next_node = newNode
            @tail = newNode
        end
        @size += 1
    end

    def prepend(val)
        newNode = Node.new(val)
        newNode.next_node = @head
        if @tail == nil
            @tail = @head
        end
        @head = newNode
        @size += 1
    end

    def at(index)
        current_node = @head
        index.times do
            current_node = current_node.next_node
        end
        current_node.data
    end

    def pop
        current_node = @head
        (@size - 2).times do
            current_node = current_node.next_node
        end
        current_node.next_node = nil
        @size = @size - 1
    end

    def contains?(val)
        current_node = @head
        @size.times do
            if current_node.data == val
                return true
            end
            current_node = current_node.next_node
        end
        false
    end

    def find(val)
        i = 0
        current_node = @head
        @size.times do
            if current_node.data == val
                return i
            end
            current_node = current_node.next_node
            i += 1
        end
        return nil
    end

    def to_s
        current_node = @head
        until current_node.nil?
            print "( #{current_node.data} ) -> "
            current_node = current_node.next_node
        end
        print "nil"
    end
            
end

a = LinkedList.new

a.append("world")

a.append("tail")

a.prepend("hello")

a.prepend("head")

p a.at(0)
p a.at(1)
p a.at(2)
p a.at(3)

a.to_s