class MembersController < ApplicationController
  def index
    @usr = User.all
    @sum = User.count
    
  end

  def show
    puts 'SSSSSSSS'
    puts params[:id]
    puts 'aaaaaaaaaaa'
    
    @pro = Profile.where(user_id: params[:id]).last   
      
  end
end
