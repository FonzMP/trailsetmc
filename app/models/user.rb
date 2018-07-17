class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  validates :username, :uniqueness => { case_sensitive: false }

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end
end
