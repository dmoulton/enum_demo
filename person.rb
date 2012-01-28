class RandomPerson
	attr_reader :firstname,:lastname,:eyecolor,:age

	COLORS = ["blue","green","brown","hazel"]

	def initialize
		@age = Random.rand(99) + 1
		@eyecolor = Random.rand(4)
		@firstname = Faker::Name.first_name
		@lastname = Faker::Name.last_name
	end

	def eyecolor
		COLORS[@eyecolor]
	end
end