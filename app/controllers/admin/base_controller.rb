class Admin::BaseController < ApplicationController
  before_action :check_is_admin!
  
 private
  
  def check_is_admin!
    authenticate_user!
    unless current_user.admin?
      sign_out current_user
      redirect_to root_path
      return true
    end
  end

end