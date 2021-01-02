class AnswersController < ApplicationController
 
 @@select =0
 
  def index

      
  end

  def create
    # ストロングパラメーターを使用
    ans = Answer.new(answer_params)
    ans.user_id = current_user.id

    if @@select == "301" then
        ans.year = 30
        ans.jirei = 1
    elsif @@select == "302" then  
        ans.year = 30
        ans.jirei = 2
    elsif @@select == "303" then  
        ans.year = 30
        ans.jirei = 3
    elsif @@select == "304" then  
        ans.year = 30
        ans.jirei = 4
    elsif @@select == "291" then  
        ans.year = 29
        ans.jirei = 1
    elsif @@select == "292" then
        ans.year = 29
        ans.jirei = 2
    elsif @@select == "293" then  
        ans.year = 29
        ans.jirei = 3
    elsif @@select == "294" then  
        ans.year = 29
        ans.jirei = 4
    elsif @@select == "281" then  
        ans.year = 28
        ans.jirei = 1
    elsif @@select == "282" then  
        ans.year = 28
        ans.jirei = 2
    elsif @@select == "283" then  
        ans.year = 28
        ans.jirei = 3
    elsif @@select == "284" then  
        ans.year = 28
        ans.jirei = 4
    elsif @@select == "271" then  
        ans.year = 27
        ans.jirei = 1
    elsif @@select == "272" then  
        ans.year = 27
        ans.jirei = 2
    elsif @@select == "273" then  
        ans.year = 27
        ans.jirei = 3
    elsif @@select == "274" then  
        ans.year = 27
        ans.jirei = 4
    elsif @@select == "261" then  
        ans.year = 26
        ans.jirei = 1
    elsif @@select == "262" then  
        ans.year = 26
        ans.jirei = 2
    elsif @@select == "263" then  
        ans.year = 26
        ans.jirei = 3
    elsif @@select == "264" then  
        ans.year = 26
        ans.jirei = 4
    elsif @@select == "251" then  
        ans.year = 25
        ans.jirei = 1
    elsif @@select == "252" then  
        ans.year = 25
        ans.jirei = 2
    elsif @@select == "253" then  
        ans.year = 25
        ans.jirei = 3
    elsif @@select == "254" then  
        ans.year = 25
        ans.jirei = 4    
    elsif @@select == "241" then  
        ans.year = 24
        ans.jirei = 1
    elsif @@select == "242" then  
        ans.year = 24
        ans.jirei = 2
    elsif @@select == "243" then  
        ans.year = 24
        ans.jirei = 3
    elsif @@select == "244" then  
        ans.year = 24
        ans.jirei = 4        
    elsif @@select == "231" then  
        ans.year = 23
        ans.jirei = 1
    elsif @@select == "232" then  
        ans.year = 23
        ans.jirei = 2
    elsif @@select == "233" then  
        ans.year = 23
        ans.jirei = 3
    elsif @@select == "234" then  
        ans.year = 23
        ans.jirei = 4        
    elsif @@select == "221" then  
        ans.year = 22
        ans.jirei = 1
    elsif @@select == "222" then  
        ans.year = 22
        ans.jirei = 2
    elsif @@select == "223" then  
        ans.year = 22
        ans.jirei = 3
    elsif @@select == "224" then  
        ans.year = 22
        ans.jirei = 4     
    elsif @@select == "211" then  
        ans.year = 21
        ans.jirei = 1
    elsif @@select == "212" then  
        ans.year = 21
        ans.jirei = 2
    elsif @@select == "213" then  
        ans.year = 21
        ans.jirei = 3
    elsif @@select == "214" then  
        ans.year = 21
        ans.jirei = 4        
    elsif @@select == "201" then  
        ans.year = 20
        ans.jirei = 1
    elsif @@select == "202" then  
        ans.year = 20
        ans.jirei = 2
    elsif @@select == "203" then  
        ans.year = 20
        ans.jirei = 3
    elsif @@select == "204" then  
        ans.year = 20
        ans.jirei = 4        
    elsif @@select == "191" then  
        ans.year = 19
        ans.jirei = 1
    elsif @@select == "192" then  
        ans.year = 19
        ans.jirei = 2
    elsif @@select == "193" then  
        ans.year = 19
        ans.jirei = 3
    elsif @@select == "194" then  
        ans.year = 19
        ans.jirei = 4 
    elsif @@select == "181" then  
        ans.year = 18
        ans.jirei = 1
    elsif @@select == "182" then  
        ans.year = 18
        ans.jirei = 2
    elsif @@select == "183" then  
        ans.year = 18
        ans.jirei = 3
    elsif @@select == "184" then  
        ans.year = 18
        ans.jirei = 4            
    end

    # DBへ保存する
    ans.save
    # トップ画面へリダイレクト
    redirect_to   answer_path(ans.id)
  
      
  end
  
  def show
     @answer = Answer.find(params[:id])
     
  end

  def edit
    @answer = Answer.find(params[:id])  
  end

  def new
     @answer = Answer.new
     @id = params[:id]
     @@select = @id
     puts "NNNNNNNNNNN"
     puts @id
  end

  def destroy
    ans = Answer.find(params[:id])
    ans.destroy
    redirect_to  answers_index_path
      
  end

  def update
    answer = Answer.find(params[:id])
    answer.update(answer_params)
    redirect_to answer_path
  end
  
   private
   def answer_params
     params.require(:answer).permit(:id, :year, :jirei, :ans1, :ans2, :ans3, :ans4, :ans5, :ans6, :ans7, :ans8, :ans9, :ans10 )
   end
  
  
end

