class SessionsController < ApplicationController
  def google_oauth2
    
    info = request.env['omniauth.auth'].info
    credentials = request.env['omniauth.auth'].credentials
    id_info = request.env['omniauth.auth'].extra.id_info

    user = User.where(email: info['email']).first
  
    if user.nil?
      session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
      redirect_to root_path, alert: "Admin not found"
      return
    end

    if user
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in admin, event: :authentication
      redirect_to root_path
    
    else
      session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
      flash[:notice] = "You are not registered."
      redirect_to root_path
    end
  end


  def destroy
    session[:user_id] = nil
    session.delete(:user_id)
    redirect_to root_path
  end
end