
class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def lifter_membership
    array = []
    Membership.all.each do |member|
    if member.lifter == self
      array << member
    end
  end
  array
end

def lifter_gyms
  array = []
  Membership.all.each do |member|
  if member.lifter == self
    array << member.gym.name
  end
end
array
end

def self.avg_total_lifters
  total = 0
  self.all.each do |lifter|
    total += lifter.lift_total
  end
  (total.to_f / self.all.length).round
end

def total_cost_lifter_memberships
  total = 0
  Membership.all.each do |member|
    if member.lifter == self
      total += member.cost
    end
  end
  total
end

def new_gym(gym, cost)
  Membership.new(self, gym, 10)
end

  def self.all
    @@all
  end


end
