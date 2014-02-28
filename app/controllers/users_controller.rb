class UsersController < ApplicationController

  def index
    @users = User.order("created_at DESC").all
  end

  def show
    @user = User.find(params[:id])
  end

  def create_user
    response_data = params["response_data"]
    u_id = response_data["id"]
    u_name = response_data["name"]
    u_user_name = response_data["username"]
    u_gender = response_data["gender"]
    u_bio = response_data["bio"]
    u_hometown = (!response_data["hometown"].blank? and !response_data["hometown"]["name"].blank?) ? response_data["hometown"]["name"] : nil 
    u_location = (!response_data["location"].blank? and !response_data["location"]["name"].blank?) ? response_data["location"]["name"] : nil 
    unless u_id.blank?
      u = User.find_or_create_by_u_id({:u_id=>u_id,:u_name=>u_name,:u_user_name=>u_user_name,:u_gender=>u_gender,:u_location=>u_location,:u_hometown=>u_hometown,:u_bio=>u_bio})
    end
    @users = User.order("created_at DESC").all
    render :partial=>"listings"
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end
end
