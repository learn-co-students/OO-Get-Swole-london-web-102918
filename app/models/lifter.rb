
class Lifter
  @@all = []


  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def sign_up(cost, gym)
    #Create membership
    Membership.new(cost, self, gym)
  end

  def memberships
    #Access membership => [memberships]
    #Select all memberships for specific member
    Membership.all.select {|m| m.lifter == self}
  end

  def gyms
    #Access the Memberships.all array
    #Determine whether or not the memberships are mine/lifters
    my_memberships = self.memberships
    #create array of gyms from the memberships array
    my_memberships.map do |m|
      m.gym
    end
  end

    def self.average_lift
      #total_lifted = []
        total_lifted = self.all.map{|w| w.lift_total }
        sum = 0
      total_lifted.each {|w| sum += 1}

    sum.to_f/total_lifted.length
  end

  def total_cost
    summo = 0
    memberships.map {|m| m.cost}.each {|c| summo += c}
    summo
  end




  def self.all
    @@all
  end

end
