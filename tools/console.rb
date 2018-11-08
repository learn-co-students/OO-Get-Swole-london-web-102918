require_relative '../config/environment.rb'

lifter1 = Lifter.new("Dan", 80)
lifter2 = Lifter.new("Paul", 100)
lifter3 = Lifter.new("Paolo", 12)

gym1 = Gym.new("Rocky's")
gym2 = Gym.new("EasyGym")
gym3 = Gym.new("SwankyGym")

membership1 = Membership.new(gym1, lifter1, 1)
membership2 = Membership.new(gym2, lifter1, 2)
membership3 = Membership.new(gym3, lifter2, 3)
membership4 = Membership.new(gym3, lifter3, 4)
membership5 = Membership.new(gym1, lifter3, 5)



binding.pry

puts "You rock!"
