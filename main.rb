require_relative 'lib/linked_list'
require_relative 'lib/node'


a = LinkedList.new

a.append("world")

a.append("tail")

a.prepend("hello")

a.prepend("head")

p a.size

puts "\n"

p a.head

p a.tail

puts "\n"

p a.at(0)
p a.at(1)
p a.at(2)
p a.at(3)

puts "\n"
p a.tail
a.pop
p a.tail
p a.size

p a.at(0)
p a.at(1)
p a.at(2)

puts "\n"

if a.contains?("world")
    p "This works"
end

if a.contains?("This doesn't work")
    p "If this doesn't p"
else
    p "That worked too"
end

puts "\n"

p "Below should be a 2"
p a.find("world")

puts "\n"

a.append("nice")

p a.at(0)
p a.at(1)
p a.at(2)
p a.at(3)

a.to_s

puts "\n"

a.insert_at("view", 4)

a.to_s

a.remove_at(0)

a.to_s
