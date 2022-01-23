module V1
  class LoginAPI < Grape::API
    desc 'End-points for the Login'
    namespace :login do
      desc 'Login via email and password'
      params do
        requires :email, type: String, desc: 'email'
        requires :password, type: String, desc: 'password'
      end
      post do
      end
    end
  end
end