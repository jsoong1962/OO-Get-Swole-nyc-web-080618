class Gym
 ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self
  end

def memberships
  array = []
  Membership.all.each do |member|
    if member.gym == self
      array << member
    end
  end
  array
end

def lifters
  array = []
  Membership.all.each do |member|
    if member.gym == self
      array << member.lifter
    end
  end
  array
end

def lifter_names
  array = []
  Membership.all.each do |member|
    if member.gym == self
      array << member.lifter.name
    end
  end
  array
end

def lift_total_for_gym
  total = 0
  Membership.all.each do |member|
    if member.gym == self
      total += member.lifter.lift_total
    end
  end
  total
end
  def self.all
    ALL
  end

end
