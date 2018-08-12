
class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    array = []
    Membership.all.each do |member|
    if member.lifter == self
      array << member
    end
  end
  array
end

def gyms
  array = []
  Membership.all.each do |member|
  if member.lifter == self
    array << member.gym
  end
end
array
end

def self.average_lift
  total = 0
  self.all.each do |lifter|
    total += lifter.lift_total
  end
  (total.to_f / self.all.length).round
end

def total_cost
  total = 0
  Membership.all.each do |member|
    if member.lifter == self
      total += member.cost
    end
  end
  total
end

def sign_up(cost, gym)
  Membership.new(self, gym, cost)
end

  def self.all
    @@all
  end


end
