module Helpers
  module ResponseHelper
    # 返回数据
    def response(code: :success, message: 'success', data: {})
      ApiResponse.write(code: code, message: message, data: data)
    end

    # 抛出异常
    def exception(code: :system_error, message: '系统异常', data: {})
      ApiResponse.exception(code: code, message: message, data: data)
    end
  end
end
