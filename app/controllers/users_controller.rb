class UsersController < ApplicationController
    def users
        @users = User.all
        @user = User.new
    end
    

    def create
        user_params[:phone].gsub!(/[^0-9]/, '')
        @user = User.new(user_params)
        @user.save
        
        respond_to do |f|
          f.html { redirect_to users_url }
          f.js
        end    
    end
    
    def edit 
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        @user.update_attributes!(user_params)
        respond_to do |f|
          f.html { redirect_to users_url }
          f.js
        end
    end
    
    def destroy
        @user = User.find(params[:id]).destroy

        respond_to do |f|
          f.html { redirect_to users_url }
          f.js
        end
    end
    
    
    private
    
    def user_params
        params.require(:user).permit(:first_name,
                                     :last_name,
                                     :email,
                                     :phone)
    end
    
    
end
