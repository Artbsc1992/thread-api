class ApplicationController < ActionController::API
  def current_user
    User.all.first
  end
end
