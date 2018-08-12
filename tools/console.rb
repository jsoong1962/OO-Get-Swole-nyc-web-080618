require_relative '../config/environment.rb'
require_relative "../app/models/gym"
require_relative "../app/models/lifter"
require_relative "../app/models/membership"
require "pry"

def reload
  load 'config/environment.rb'
end

johnny = Lifter.new("Johnny", 5)
david = Lifter.new("David", 9)
lisa = Lifter.new("Lisa", 4)

gym1 = Gym.new("Blink")
gym2 = Gym.new("Planet_Fitness")
gym3 = Gym.new("LA_Fitness")

ms1 = Membership.new(johnny, gym1, 5)
ms2 = Membership.new(david, gym2, 5)
ms3 = Membership.new(lisa, gym1, 5)
ms4 = Membership.new(johnny, gym2, 5)
binding.pry
