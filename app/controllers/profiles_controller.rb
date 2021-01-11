class ProfilesController < ApplicationController

  @@count = 0

  def index
    @profiles = Profile.where(user_id: current_user.id).last

  end

  def new
    @profiles = Profile.new  
    puts "--- new count ---"
    puts @profiles.id
    
  end

  def show
    @profiles = Profile.find(params[:id])
  end

  def edit
    @profiles = Profile.find(params[:id])  
  
  end
  
  def create
    # ストロングパラメーターを使用
    ans = Profile.new(profile_params)
    ans.user_id = current_user.id
    # DBへ保存する
    ans.save
    # トップ画面へリダイレクト
    redirect_to  profile_path(ans.id)
    puts "---- profiles(ans.user_id) ----"
    puts ans.user_id
    puts ans.capa
    puts ans.expe
    
    
  end
  
  def update
   ans = Profile.find(params[:id])
   ans.user_id = current_user.id
   ans.update(profile_params)
　 redirect_to  profile_path(ans.id)
    
  end
  
  def destroy
      
  end
  
  private
  def profile_params
   params.require(:profile).permit(:id, :user_id, :capa, :expe, :most1, :most2, :most3, :most4, :profile )
  end
  

end
