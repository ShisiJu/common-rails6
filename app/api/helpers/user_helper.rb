module Helpers
  module UserHelper
    def logger
      BaseAPI.logger
    end

    def session
      env['rack.session']
    end
  end
end
