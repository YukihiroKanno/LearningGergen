class ProfilesController < ApplicationController

  @@count = 0

  def index
    @profiles = Profile.where(user_id: current_user.id).last

  end

  def new
    @profiles = Profile.new  
    @count = Profile.count
    @@count = @count
    puts "--- new count ---"
    puts @@count
    
  end

  def show
    puts "-----profiles(show(params[:id]--"  
    puts @@count
    @profiles = Profile.find(@@count)
    
  end

  def edit
    @profiles = Profile.find(@@count)  
  
  end
  
  def create
    # ストロングパラメーターを使用
    ans = Profile.new(id:@@count)
    ans.user_id = current_user.id
    # DBへ保存する
    ans.save
    # トップ画面へリダイレクト
    redirect_to  profile_path(id:@@count)
    puts "---- profiles(ans.user_id) ----"
    puts ans.user_id
    puts ans.capa
    puts ans.expe
    
    
  end
  
  def update
   ans = Profile.find(@@count)
   ans.user_id = current_user.id
   ans.update(profile_params)
　 redirect_to  profile_path(@@count)
    
  end
  
  def destroy
      
  end
  
  private
  def profile_params
   params.require(:profile).permit(:id, :user_id, :capa, :expe, :most1, :most2, :most3, :most4, :profile )
  end
  

end
