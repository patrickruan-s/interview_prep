class UsersController < ApplicationController
    before_action :authenticate_user!

    def index
    end

    def new
    end

    def create
        binding.pry
        @user = User.create(user_params)
        redirect_to nba_rosters_path
    end

    private

        def user_params
            params.require(:user)
        end
end