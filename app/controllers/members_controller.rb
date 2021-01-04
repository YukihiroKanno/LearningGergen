class MembersController < ApplicationController
  def index
    @usr = User.all      
  end

  def show
  end
end
