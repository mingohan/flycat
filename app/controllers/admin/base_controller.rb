class Admin::BaseController < ApplicationController
    before_action :check_permission

    private
        def check_permission
            available_roles = ['admin', 'staff', 'vendor']
            redirect_to root_path if not (user_signed_in? && current_user.role.in?(available_roles))
            
        end
end