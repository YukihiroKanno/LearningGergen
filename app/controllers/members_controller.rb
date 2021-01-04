class MembersController < ApplicationController
  def index
    @usr = User.all
    @sum = User.count
    
  end

  def show
  end
end
