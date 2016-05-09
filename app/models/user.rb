class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    # 1) removed "registerable" to disable visitors/public to sign up
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
end
