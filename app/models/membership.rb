class Membership

  @@all = []

  attr_accessor :gym, :lifter, :price

  def initialize(gym, lifter, price)
    @gym = gym
    @lifter = lifter
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_members
    self.all.count
  end

end
