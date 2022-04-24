class Admin::VendorsController < Admin::BaseController
    def index
        @vendors = User.where(role: "vendor")
    end

    def new
        @vendor = User.new
    end

    def create
        @vendor = User.new(vendor_params)
        if @vendor.save
            redirect_to admin_vendors_path, notice: "新增成功"
        else
            render :new
        end
        
    end


    def vendor_params
        params.require(:user).permit( :email, :password, :password_confirmation).merge(role: "vendor")
    end
end
