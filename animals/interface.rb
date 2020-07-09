require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

animals = []
animals << Lion.new('Simba')
animals << Lion.new('Nala')
animals << Meerkat.new('Timon')
animals << Warthog.new('Pumbaa')

animals.each do |animal|
  puts animal.talk
end