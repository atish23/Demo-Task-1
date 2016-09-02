class UsersController < ApplicationController
    before_filter :authenticate_user!
    
    # def index
    #     @users = User.includes(:todos).select{ |user| user.id != current_user.id}
    

    # end
    
    def show
        @user = User.includes(:projects => [:todos]).find_by_id(params[:id])
        respond_to do |format|
              format.html
              format.json
        end
    end
private
    def after_sign_in_path_for(resource)
      raise "hi"
    end
end
