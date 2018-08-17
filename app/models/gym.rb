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
  Membership.all.select do |membership|
    membership.gym == self
  end
end

def lifters
  memberships.map do |membership|
    membership.lifter
  end
end

def lifter_names
  lifters.map do |lifter|
    lifter.name
  end
end

def lift_total_for_gym
  total = 0
  lifters.each do |lifter|
    total += lifter.lift_total
  end
  total
end

end
