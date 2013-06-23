def rand_string(length)
	o = [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten
	(0...length).map{ o[rand(o.length)] }.join
end

FactoryGirl.define do
	factory :course do
		name { rand_string(10) }
	end
	
	factory :student, class: User do
		
	end
end
