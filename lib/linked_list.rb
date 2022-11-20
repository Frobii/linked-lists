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
        else 
            @tail = newNode
            @head.next_node = newNode
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


end

a = LinkedList.new

a.append("world")

a.prepend("hello")

p a.size

p a.head

p a.tail
