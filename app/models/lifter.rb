class Lifter

  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select { |m| m.lifter ==  self}
  end

  def gyms
    memberships.map { |m| m.gym }
  end

  def self.lift_total
    lift_total = Lifter.all.map { |l| l.lift_total }
    lift_total.inject(0){|sum, el| sum + el}.to_f / lift_total.length.to_f
  end

  def total_cost
    total_cost = memberships.map { |m| m.cost }
    total_cost.inject(0){|sum, el| sum + el}
  end

  def sign_up(cost, gym)
    Membership.new(cost, self, gym)
  end

  end
