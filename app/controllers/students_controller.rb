class StudentsController < ApplicationController

  def show  
    render 'show.html.erb'
  end

  def edit 
    render 'edit.html.erb'
  end

  def update
    redirect_to '/'
  end




end
