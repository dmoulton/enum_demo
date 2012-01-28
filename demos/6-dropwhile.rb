require 'faker'
require '../person.rb'

people = 1000.times.map {RandomPerson.new}

group = people.drop_while{|p| p.age < 95 }

p group.count