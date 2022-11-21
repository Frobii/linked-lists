require_relative 'lib/linked_list'
require_relative 'lib/node'


a = LinkedList.new

a.append("world")

a.append("tail")

a.prepend("hello")

a.prepend("head")

p a.at(0)
p a.at(1)
p a.at(2)
p a.at(3)

puts "\n"
# a.to_s

a.insert_at("beautiful", 2)

p a.at(0)
p a.at(1)
p a.at(2)
p a.at(3)
p a.at(4)

puts "\n"

a.remove_at(4)

p a.size

p a.at(0)
p a.at(1)
p a.at(2)
p a.at(3)
