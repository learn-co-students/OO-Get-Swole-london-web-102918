require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# names = ["Zoe", "John", "Kim"]
# 3.times do
#   Lifter.new(names[Random.rand(2)], Random.rand(9839577))
# end
# twenty4 = Gym.new("24 Hour Fitness")
# hole_in_pocket = Membership.new(40, Lifter.all.first, twenty4)


# Lifters
lifter1 = Lifter.new("Bob", 100)
lifter2 = Lifter.new("Jay Cutler", 300)
lifter3 = Lifter.new("Vin Diesel", 145)
lifter4 = Lifter.new("Sylvester Stallone", 237)

#Gyms
gym1 = Gym.new("Gymbox")
gym2 = Gym.new("LA")
gym3 = Gym.new("Gym")
gym4 = Gym.new("Pure")

#Membership
membership1 = Membership.new(200, lifter1, gym1)
membership2 = Membership.new(100, lifter2, gym2)
membership3 = Membership.new(53, lifter3, gym3)
membership4 = Membership.new(47, lifter4, gym4)
membership5 = Membership.new(54, lifter1, gym1)
membership6 = Membership.new(46, lifter1, gym2)
membership7 = Membership.new(300, lifter3, gym2)

binding.pry
 puts "amazing"
