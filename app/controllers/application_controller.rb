class ApplicationController < ActionController::Base

  # userのページにアクセスする前に
  before_action :configure_permitted_parameters, if: :devise_controller?

  # def after_sign_in_path_for(resource) 
  #   root_path
  # end

  # controllerの中だけでこのメソッドを使う
  protected
  
  # 新規登録後のリダイレクト先をマイページへ
  def after_sign_in_path_for(resource)
    if current_user
      flash[:notice] = "ログインに成功しました" 
      root_path  #　指定したいパスに変更
    else
      flash[:notice] = "新規登録完了しました。" 
      root_path  #　指定したいパスに変更
    end
  end

  # sign_up の時に、userを許可する
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  # protected
  #   def configure_permitted_parameters
  #     devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:email])
  #   end

  
end
