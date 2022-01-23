class BaseAPI < Grape::API
  use ActionDispatch::Session::CookieStore

  format :json
  prefix :api

  # https://github.com/heartcombo/devise/tree/main/lib/devise/controllers
  helpers Devise::Controllers::SignInOut
  helpers Devise::Controllers::Helpers
  helpers ::Helpers::LoginHelper
  helpers ::Helpers::ResponseHelper

  rescue_from :all do |e|
    Rails.logger.error(e.message)
    Rails.logger.error(e.backtrace.join("\n"))
    error!(api_exception(message: e.message), 500)
  end

  mount V1::API
end
