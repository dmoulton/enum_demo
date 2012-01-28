require 'faker'
require '../person.rb'


people = 1000.times.map {RandomPerson.new}

p "Total People: #{people.count}"

p "People with a lastname starting with 'S': #{people.count{ |p| p.lastname.chr == 'S'}}"

p "People with a lastname starting with 'Z': #{people.count{ |p| p.lastname.chr == 'Z'}}"

p "People with the name 'Maximilian Bednar': #{people.count{ |p| p.firstname == 'Maximilian' && p.lastname == 'Bednar'}}"

p "Senior Citizens: #{people.count{|p| p.age > 64}}"

p "Minors: #{people.count{|p| p.age < 18}}"

p "People named Robert: #{people.count{ |p| p.firstname == 'Robert'}}"

p "People with blue eyes: #{people.count{ |p| p.eyecolor == 'blue'}}"

p "People with green eyes: #{people.count{ |p| p.eyecolor == 'green'}}"

p "People with brown eyes: #{people.count{ |p| p.eyecolor == 'brown'}}"

p "People with hazel eyes: #{people.count{ |p| p.eyecolor == 'hazel'}}"

(1..100).each { |x| p "#{people[x].firstname} #{people[x].lastname} - Eyes: #{people[x].eyecolor} - Age: #{people[x].age}"}