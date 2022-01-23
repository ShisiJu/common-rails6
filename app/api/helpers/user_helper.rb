module Helpers
  module UserHelper
    def logger
      BaseAPI.logger
    end

    def current_user
      @current_user ||= User.authorize!(env)
    end

    def authenticate!
      error!('401 Unauthorized', 401) unless current_user
    end
  end
end
