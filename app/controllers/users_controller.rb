class UsersController < ApplicationController
    
    before_action :set_user, only: [:profile]
    def index

    end
    
    def favorites
        @user = User.find(params[:id])
    end

    def following
        @user  = User.find(params[:id])
        @users = @user.followings
        render 'show_follows'
        
    end
  
    def followers
      @user  = User.find(params[:id])
      @users = @user.followers
      render 'show_followers'
    end

    def profile
        
        
    end

    private
    
    def set_user
        @user = User.find_by_username(params[:username])
    end
end
