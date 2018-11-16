require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
names = ["Zoe", "John", "Kim"]
3.times do
  Lifter.new(names[Random.rand(2)], Random.rand(9839577))
end
twenty4 = Gym.new("24 Hour Fitness")
hole_in_pocket = Membership.new(40, Lifter.all.first, twenty4)


l3 = Lifter.new('sam', 4)
l1 = Lifter.new('dan', 7)
l2 = Lifter.new('lucy', 60)

l_boat = Gym.new('Lucy boat')
d_house = Gym.new('Dan house')
p_gym = Gym.new('Prank gym')

m1 = Membership.new(30, l1, l_boat)
m2 = Membership.new(43, l1, l_boat)
m3 = Membership.new(50, l2, l_boat)
m4 = Membership.new(33, l2, d_house)
m5 = Membership.new(25, l1, d_house)
m6 = Membership.new(15, l3, p_gym)
m6 = Membership.new(12, l2, p_gym)


binding.pry
 puts "amazing"
