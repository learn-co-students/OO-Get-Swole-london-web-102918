
class Lifter

  @@all = []

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end
#Get a list of all the memberships that a specific lifter has
  def membership
    Membership.all.select {|a| a.lifter == self }
  end
#Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    membership.map {|a| a.gym}
  end
# Get the average lift total of all lifters
  def self.avr_lift
    sum = 0
    Lifter.all.each {|l| sum += l.lift_total}
    sum.to_f/Lifter.all.length
  end
#Get the total cost of a specific lifter's gym memberships
  def cost
    sum = 0
    membership.each {|c| sum += c.cost}
    sum
  end

#Given a gym and a membership cost, sign a specific lifter up for a new gym
 def create_memebership(cost, gym)
   Membership.new(cost,self, gym)
 end

end
