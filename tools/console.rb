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

golds = Gym.new("Golds")
pf = Gym.new("Planet Fitness")
bob = Lifter.new("Bob", 700)
tracy = Lifter.new("Tracy", 800)
a = Membership.new(bob, golds, 500)
b = Membership.new(tracy, golds, 400)
c = Membership.new(tracy, pf, 700)
sharon = Lifter.new("Sharon", 900)
lifetime = Gym.new("Lifetime Fitness")
ms1 = Membership.new(johnny, gym1, 600)
ms2 = Membership.new(david, gym1, 700)
ms3 = Membership.new(lisa, gym1, 600)
ms4 = Membership.new(johnny, gym2, 300)
ms5 = Membership.new(sharon, lifetime, 500)
binding.pry
