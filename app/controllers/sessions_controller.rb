class SessionsController < ApplicationController

  # has_secure_password

  def new
    students = Unirest.get("http://localhost:3001/api/v1/students/").body
    @student = students.first
    @id = students.first["id"]
    render 'new.html.erb'
  end

  def create
    students = Unirest.get("http://localhost:3001/api/v1/students/").body
    student = students.first
    id = student["id"]
    encrypted_password = BCrypt::Password.create(params[:password])
    if student && student["password"] === params[:password]
      session[:student_id] = student["id"]
      flash[:notice] = "Successfully logged in!"
      redirect_to "/students/#{id}"
    else
      flash[:notice] = "Something went wrong, try again!"
      redirect_to "/login"
    end
  end

end
