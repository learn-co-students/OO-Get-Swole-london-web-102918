
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

    def memberships
      Membership.all.select { |m| m.gym == self }
    end

    def lifters
      memberships.map { |m| m.lifter }.uniq
    end

    def lifters_names
      lifters.map { |l| l.name }.uniq
    end

    def lift_total
      total_l = lifters.map { |l| l.lift_total }
      total_l.inject(0){|sum, el| sum + el}.to_f
    end

    end
