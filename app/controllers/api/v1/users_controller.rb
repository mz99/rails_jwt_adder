module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        render json: { "ok":"it worked!" }
      end

      def create
        @user = User.new(user_params)
        if @user.save
          render json: {"ok": "user created!" }
        else
          render json: @user.errors
        end
      end

      def show
      end

      private

      def user_params
        params.require(:user).permit(:email, :password)
      end
    end
  end
end
