class Gym

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_gyms
    self.all.count
  end

  def membership_list
    Membership.all.select {|mem| mem if mem.gym == self}
  end

  def lifter_list
    self.membership_list.map {|mem| mem.lifter}
  end

  def lifter_names
    self.lifter_list.map {|lifter| lifter.name}
  end

  def gym_lift_total
    total = 0
    self.lifter_list.each {|lifter| total += lifter.weight_lifted}
    total
  end

end
