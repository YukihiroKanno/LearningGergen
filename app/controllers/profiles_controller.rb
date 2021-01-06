class ProfilesController < ApplicationController

  def index
    @profiles = Profile.where(user_id: current_user.id).last

  end

  def new
    @profiles = Profile.new  
      
  end

  def show
  end

  def edit
  end
  
  def create
    # ストロングパラメーターを使用
    ans = Profile.new(profile_params)
    ans.user_id = current_user.id
    # DBへ保存する
    ans.save
    # トップ画面へリダイレクト
    redirect_to  profile_path(ans.user_id)
      
  end
  
  def update
      
  end
  
  def destroy
      
  end
  
  private
  def profile_params
   params.require(:profile).permit(:id, :user_id, :capa, :exep, :most1, :most2, :most3, :most4, :profile )
  end
  

end
