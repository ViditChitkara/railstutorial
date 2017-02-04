class HomeController < ApplicationController

	def hello
		@time = Time.now

		if session[:user_id]
			user = User.find(session[:user_id])
		else
			redirect_to '/signin'
		end

	end

	def singup_get
	end

	def signup
		email = params["email"]
		name = params["name"]
		password = params["password"]

		user = User.find_by_email(email)

		unless user
			user = User.create(email: email, password: password, name: name)
			session[:user_id] = user.id
			redirect_to '/'
		end

		return redirect_to '/signup'
	end

	def signin
		email = params["email"]
		password = params["password"]
		user = User.find_by_email_and_password(email, password)
		if user 
			session[:user_id] = user.id
			redirect_to '/'
		else
			redirect_to '/signin'
		end

	end

	def signin_get
	end

	def logout
		session[:user_id] = nil
		return redirect_to '/'
	end

end
