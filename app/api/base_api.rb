class BaseAPI < Grape::API
  use ActionDispatch::Session::CookieStore

  format :json
  prefix :api

  helpers Devise::Controllers::SignInOut
  helpers ::Helpers::UserHelper
  helpers ::Helpers::ResponseHelper

  rescue_from :all do |e|
    Rails.logger.error(e.message)
    Rails.logger.error(e.backtrace.join("\n"))
    error!(api_exception(message: e.message), 500)
  end

  mount V1::API
end
