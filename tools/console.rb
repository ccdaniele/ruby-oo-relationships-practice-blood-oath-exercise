require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult_1 = Cult.new("Flatiron Cult", "Chicago", 1600, "Where Learning is Fun")
cult_2 = Cult.new("Not Flatiron Cult", "Chicago", 1700, "Where learning goes to die")
cult_3 = Cult.new("Not Big City", "Chicago", 1999, "We don't have a Starbucks")
cult_4 = Cult.new(" Everybody hate us", "Texas", 1999, "We love trump")


follower_1 = Follower.new("Danielle", 23, "Eh")
follower_2 = Follower.new("Daniel", 33, "YOLO")
follower_3 = Follower.new("Maria", 25, "Yoo Hoo")
follower_4 = Follower.new("Pedro", 23, "Eh")
follower_5 = Follower.new("Juan", 33, "YOLO")
follower_6 = Follower.new("Ashlee", 25, "Yoo Hoo")
follower_7 = Follower.new("Rigoberto", 23, "Eh")
follower_8 = Follower.new("Pino", 33, "YOLO")
follower_9 = Follower.new("Heredia", 25, "Yoo Hoo")
follower_10 = Follower.new("Pipo", 23, "Eh")
follower_11 = Follower.new("Gaby", 33, "YOLO")
follower_12 = Follower.new("John", 25, "Yoo Hoo")


BloodOath.new(cult_1,follower_2)
BloodOath.new(cult_2,follower_3)
BloodOath.new(cult_3,follower_2)
BloodOath.new(cult_3,follower_1)
BloodOath.new(cult_3,follower_1)
BloodOath.new(cult_1,follower_4)
BloodOath.new(cult_2,follower_4)
BloodOath.new(cult_3,follower_5)
BloodOath.new(cult_3,follower_1)
BloodOath.new(cult_3,follower_6)
BloodOath.new(cult_1,follower_4)
BloodOath.new(cult_2,follower_4)
BloodOath.new(cult_1,follower_5)
BloodOath.new(cult_3,follower_4)
BloodOath.new(cult_2,follower_6)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits