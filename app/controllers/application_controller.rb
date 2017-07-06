class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    id = session[:student_id]
    current_user = Unirest.get("http://localhost:3001/api/v1/students/#{id}").body
    active_student ||= current_user if session[:student_id]
  end
  
  helper_method :current_user

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

end
