class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper_method :is_admin!

  def is_admin!
    if user_signed_in?
      unless current_user&.admin
        redirect_to root_path
      end
    end
  end
  
end
