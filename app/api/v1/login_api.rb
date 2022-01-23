module V1
  class LoginAPI < Grape::API
    desc 'End-points for the Login'
    namespace :login do
      desc 'Login via username and password'
      params do
        requires :username, type: String, desc: 'username'
        requires :password, type: String, desc: 'password'
      end
      post do
        user = User.find_by(username: params[:username])
        
        if user&.valid_password?(params[:password])
          sign_in(user)
          user.reset_api_token!
          { user_id: user.id, api_token: user.api_token }
        else
          response(message: 'Invalid username/password combination', data: false)
        end
      end
    end
  end
end
