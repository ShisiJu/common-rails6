module V1
  class API < Grape::API
    version :v1, using: :path
    namespace do
      mount V1::LoginAPI
      mount V1::UserAPI
    end
  end
end