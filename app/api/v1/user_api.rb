module V1
  class UserAPI < Grape::API
    desc 'End-points for the Login'
    namespace :user do
      desc 'Login via email and password'
      params do
      end
      # http://127.0.0.1:3000/api/v1/user
      get do
        'hello'
      end
    end
  end
end
