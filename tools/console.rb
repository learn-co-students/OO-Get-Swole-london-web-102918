require_relative '../config/environment.rb'



dan = Lifter.new("Dan",120)
ana = Lifter.new("Ana",20)
sam = Lifter.new("Sam",120)

pure = Gym.new("Pure")
o2 = Gym.new("O2")
rock = Gym.new("Rock")

m1 = Membership.new(200, dan, pure)
m2 = Membership.new(150, ana, o2)
m3 = Membership.new(300, sam, rock)
m4 = Membership.new(100, dan, o2)
m5 = Membership.new(23, ana, pure)
m5 = Membership.new(23, sam, o2)


binding.pry
 puts "amazing"
