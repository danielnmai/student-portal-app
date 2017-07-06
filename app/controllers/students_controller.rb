class StudentsController < ApplicationController

  # has_secure_password

  def show
    id = params[:id]
    @student = Unirest.get("http://localhost:3001/api/v1/students/#{id}").body
    render 'show.html.erb'
  end

  def edit
    @id = params[:id]
    @student = Unirest.get("http://localhost:3001/api/v1/students/#{@id}").body

    render 'edit.html.erb'
  end

  def update
    @id = params[:id]
    @student = Unirest.get("http://localhost:3001/api/v1/students/#{@id}").body

    @student = Unirest.patch(
    "http://localhost:3001/api/v1/students/#{@id}.json",
    headers: {'Accept' => 'Application/json'},
    parameters: {first_name: params[:first_name]}).body

    # parameters: {first_name: params[:first_name], last_name: params[:last_name], address: params[:address], city: params[:city], state: params[:state], zip_code: params[:zip_code]}).body
    redirect_to "/students/#{@id}"

  end
end
