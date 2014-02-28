class User < ActiveRecord::Base
  attr_accessible :u_id, :u_name, :u_user_name, :u_gender, :u_location, :u_hometown, :u_bio
end
