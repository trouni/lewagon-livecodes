require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

animals = []
animals << Lion.new('Simba')
animals << Meerkat.new('Timon')
animals << Warthog.new('Pumba')

animals.each { |animal| puts animal.talk }