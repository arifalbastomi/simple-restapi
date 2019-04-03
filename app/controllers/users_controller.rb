class UsersController < ApplicationController
    skip_before_filter :verify_authenticity_token
    def index
        @users = User.all
        render json: {
            "error" => false,
            "err_code" => 0,
            "message" => "success",
            "data": @users,
          }, status: 200
    end

    def details
        @users = User.find_by_id(params[:id])
        if @users.present?
            render json: {
                "error" => false,
                "err_code" => 0,
                "message" => "success",
                "data": @users,
              }, status: 200
        else
            render json: {
                "error" => false,
                "err_code" => 400,
                "message" => "data not found",
              }, status: 400
        end
        
    end

    def create

        @users = User.new(user_params)
        if @users.present?
            render json: {
                "error" => false,
                "err_code" => 200,
                "message" => "success insert data",
              }, status: 400
        else
            render json: {
                "error" => false,
                "err_code" => 400,
                "message" => "failed insert data",
              }, status: 400
        end

    end
    

    

end
