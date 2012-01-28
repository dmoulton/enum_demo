a = 1000.times.map{ Random.rand(500) }

p a.inspect

p "a.count = #{a.count}"

p "a.count(50) = #{ a.count(50) }"

p "a.count{|x| x<100} = #{ a.count{|x| x<100} }"

p "a.count{|x| x.even?} = #{ a.count{|x| x.even?} }"
