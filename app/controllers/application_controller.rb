class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    # 新規登録時に許可するストロングパラメータ
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:nickname, :gender_id, :last_name, :first_name, :last_kana, :first_kana,
                                             :birthday, { wallet_attributes: [:stock_quantity] }])
    # ログイン時に許可するストロングパラメータ
    devise_parameter_sanitizer.permit(:sign_in,
                                      keys: [:nickname, :gender_id, :last_name, :first_name, :last_kana, :first_kana,
                                             :birthday, { wallet_attributes: [:stock_quantity] }])
    # ユーザー情報更新時に許可するストロングパラメータ
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: [:nickname, :gender_id, :last_name, :first_name, :last_kana, :first_kana,
                                             :birthday, { wallet_attributes: [:stock_quantity] }])
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end
end
