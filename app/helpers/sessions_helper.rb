module SessionsHelper

  def sign_in(user)
    session[:token] = user.id
    self.current_user = user
  end

  def current_user=(user)
    @current_user = user
  end
end
