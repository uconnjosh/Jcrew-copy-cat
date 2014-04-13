
FactoryGirl.define do 
	factory :user do 
		email "admin"
		password "admin"
		password_confirmation "admin"
	end

	factory :product do 
		name "bunny"
		price "25"
	end
end


