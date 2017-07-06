class StudentsController < ApplicationController

  # has_secure_password

  def show
    id = params[:id]
    @id = params[:id]
    @student = Unirest.get("http://localhost:3001/api/v1/students/#{id}").body
    render 'show.html.erb'
  end

  def edit
    render 'edit.html.erb'
  end

  def update
    redirect_to '/'
  end
end
