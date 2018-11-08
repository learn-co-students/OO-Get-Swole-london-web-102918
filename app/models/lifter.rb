class Lifter

  @@all = []

  attr_accessor :name, :weight_lifted

  def initialize(name, weight_lifted)
    @name = name
    @weight_lifted = weight_lifted
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_lifters
    self.all.count
  end

  def memberships
    Membership.all.select {|mem| mem if mem.lifter == self}
  end

  def gyms
    self.memberships.map {|mem| mem.gym}
  end

  def self.average_lift
    grand_total = 0
    self.all.map {|lifter| grand_total += lifter.weight_lifted}
    grand_total / self.total_lifters.to_f
  end

  def total_paid
    total = 0
    Membership.all.each {|mem| total += mem.price if mem.lifter == self}
    total
  end

  def sign_up(gym, price)
    Membership.new(gym, self, price)
  end

end
