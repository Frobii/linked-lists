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
        current_node = @head
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
            @tail = current_node.next_node
            current_node = current_node.next_node
        end
        current_node.next_node = nil
        @size -= 1
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
            puts "( #{current_node.data.to_s} ) -> "
            current_node = current_node.next_node
        end
        puts "nil"
    end

    def insert_at(val, index)
        newNode = Node.new(val)
        current_node = @head
        if index == 0 && @tail != nil
            newNode.next_node = @head
            @head = newNode
        elsif index > 0 && @tail != nil
            i = 1
            until current_node.nil?
                previous_node = current_node
                current_node = current_node.next_node
                if i == index
                    previous_node.next_node = newNode
                    newNode.next_node = current_node
                end
                i += 1
            end
        elsif @tail == nil
            @head = newNode
        end
        @size += 1
    end

    def remove_at(index)
        i = 1
        current_node = @head
        if index == 0
            @head = @head.next_node
        else
            until current_node.nil?
                previous_node = current_node
                current_node = current_node.next_node
                if i == index
                    previous_node.next_node = current_node.next_node
                    current_node.next_node = nil
                end
                i += 1
            end
        end
        @size -= 1
    end
end
