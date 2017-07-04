class StudentsController < ApplicationController

  def show
    id = params[:id]
    @students = Unirest.get("http://localhost:3001/api/v1/students/").body
    render 'show.html.erb'
  end

  def edit
    render 'edit.html.erb'
  end

  def update
    redirect_to '/'
  end
end
