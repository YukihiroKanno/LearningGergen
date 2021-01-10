class ConsidersController < ApplicationController

 @@select =0

  def new
    @answer = Consider.new
    @id = params[:id]
    @@select = @id
    puts "NNNNNNNNNNN"
    puts @id   
  end

  def show
  end

  def index
  end

  def edit
      
  end
end
