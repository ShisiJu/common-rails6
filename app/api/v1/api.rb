module V1
  class API < Grape::API
    version :v1, using: :path

    namespace do
      before do
        authenticate_user!
      end
      mount V1::UserAPI
    end

    # 不需要鉴权
    namespace do
      mount V1::LoginAPI
    end
  end
end
