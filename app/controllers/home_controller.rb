class HomeController < ApplicationController

	def hello
		@time = Time.now
		time = Time.now + 2.days
	end


	

end
