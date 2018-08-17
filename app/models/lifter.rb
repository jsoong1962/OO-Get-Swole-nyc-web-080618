
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
  Membership.all.select do |membership|
    membership.lifter == self
  end
end

def gyms
 memberships.map do |membership|
   membership.gym
end
end

def self.average_lift
  total = 0
  self.all.each do |lifter|
    total += lifter.lift_total
  end
  (total / self.all.length.to_f).round
end

def sign_up(gym, cost)
  Membership.new(self, gym, cost)
end

def total_cost
  total = 0
  memberships.each do |membership|
    total += membership.cost
  end
  total 
end

end
