module Helpers
  module ResponseHelper
    def no_login!
      error! 'Unauthorized', 401, 'X-Error-Detail' => 'Not login.'
    end

    def response(code: :success, message: 'success', data: {})
      { code: code, message: message, data: data }
    end

    def api_exception(code: :system_error, message: '系统异常', data: {})
      { code: code, message: message, data: data }
    end
  end
end
