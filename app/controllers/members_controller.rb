class MembersController < ApplicationController
  def index
    @usr = User.all
    @sum = User.count
    
  end

  def show
    @pro = Profile.where(user_id: params[:id]).last   
      
  end
  
  private
  def profile_params
   params.require(:profile).permit(:id, :user_id, :capa, :exep, :most1, :most2, :most3, :most4, :profile )
  end
  
  
  
end
