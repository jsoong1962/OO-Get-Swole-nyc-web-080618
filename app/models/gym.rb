class Gym
 ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self
  end

def membership
  array = []
  Membership.all.each do |member|
    if member.gym == self
      array << member
    end
  end
  array
end

def list_of_lifters
  array = []
  Membership.all.each do |member|
    if member.gym == self
      array << member.lifter
    end
  end
  array
end

def names_of_lifters
  array = []
  Membership.all.each do |member|
    if member.gym == self
      array << member.lifter.name
    end
  end
  array
end

def combined_total
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
