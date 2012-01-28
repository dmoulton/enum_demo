require 'faker'
require '../person.rb'

people = 1000.times.map {RandomPerson.new}

blues = people.find_all{|p| p.eyecolor=="blue"}

blues.each do |b|
	p "#{ b.firstname } #{ b.lastname } - Age #{b.age} - Eyecolor: #{b.eyecolor}"
end