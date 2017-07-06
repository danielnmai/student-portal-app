class SessionsController < ApplicationController

  # has_secure_password

  def new
    render 'new.html.erb'
  end

  def create
    students = Unirest.get("https://polar-earth-87794.herokuapp.com/api/v1/students").body
    students.each do |student|
      encrypted_password = BCrypt::Password.create(params[:password])
       if (student["email"] == params[:email]) &&
        (student["password"] == params[:password])
         session[:student_id] = student["id"]
         id = student["id"]
         flash[:notice] = "Successfully logged in!"
         redirect_to "/students/#{id}"
       else
         flash[:notice] = "Something went wrong, try again!"
       endx-
    end
  end
end
