class Authentication::AdminController < ApplicationController

    before_action :authorize!

    def index
        @users = User.all
    end


end