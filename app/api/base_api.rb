class BaseAPI < Grape::API
  format :json
  prefix :api
  helpers ::Helpers::UserHelper
  helpers ::Helpers::ResponseHelper

  rescue_from :all do |e|
    Rails.logger.error(e.message)
    Rails.logger.error(e.backtrace.join("\n"))
    Rack::Response.new(JSON.dump(ApiResponse.new(code: :system_error, message: e.message).format), 200,
                       'Content-Type' => 'application/json ')
  end

  before do
    header 'Access-Control-Allow-Origin', '*'
    header 'Content-Type', 'text/plain;charset=utf-8'
    header 'Access-Control-Allow-Methods', '*'
    header 'Access-Control-Expose-Headers', ''
    header 'Access-Control-Allow-Headers', 'Authorization,content-type,accept,Access-Control-Allow-Origin'
  end

  mount V1::API
end
