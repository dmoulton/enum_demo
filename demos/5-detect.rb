require 'faker'
require '../person.rb'


people = 10000.times.map {RandomPerson.new}

h = people.detect{|p| p.age > 20 && p.eyecolor=='hazel'}

begin
	p "First Person at least 21 with hazel eyes: #{ h.firstname } #{ h.lastname } - Age #{h.age}"
rescue
	p "There was no one in the group at least 21 with hazel eyes"
end