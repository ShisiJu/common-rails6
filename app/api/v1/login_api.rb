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
        account = Account.find_by(username: params[:username])
        if account&.valid_password?(params[:password])
          byebug
          sign_in(account)
          { account_id: account.id }
        else
          error!('Invalid email/password combination', 401)
        end
      end
    end
  end
end
