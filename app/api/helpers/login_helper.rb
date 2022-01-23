module Helpers
  module LoginHelper
    def session
      env['rack.session']
    end

    def authenticate_user!
      warden.authenticate!
    end
  end
end
