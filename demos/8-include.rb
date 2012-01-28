require 'faker'
require '../person.rb'

people = 100000.times.map {RandomPerson.new}

names = people.each {|p| "#{p.firstname} #{p.lastname}"}

hasit = names.include?("Gunnar")

p hasit