class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#Get a list of all memberships at a specific gym
  def all_memberships_for_a_gym
    Membership.all.select {|a| a.gym == self }
  end

# Get a list of all the lifters that have a membership to a specific gym
  def lifter_gym
    all_memberships_for_a_gym.map {|a| a.lifter}
  end
#Get a list of the names of all lifters that have a membership to that gym

  def members_names
    lifter_gym.map {|l| l.name}
  end
#Get the combined lift_total of every lifter that has a membership to that gym
  def total_lift
    total = 0
    lifter_gym.each {|l| total += l.lift_total}
    total
  end
end
