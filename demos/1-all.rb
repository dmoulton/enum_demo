# all?
# returns true if block never returns false

a = %w[ one two three ]

p a.all? { |w| w.length == 3} #=> false

p a.all? { |w| w != "four"} #=> true