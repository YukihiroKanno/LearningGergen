class CommentsController < ApplicationController
  
  @@aid =0
  @@aa =""
  @@cc = ""
  @@jdg_id = ""

  def index
    if params[:id] == "301" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 30).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "302" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 30).where(jirei: 2).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "303" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 30).where(jirei: 3).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "304" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 30).where(jirei: 4).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "291" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 29).where(jirei: 1).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "292" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 29).where(jirei: 2).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "293" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 29).where(jirei: 3).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "294" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 29).where(jirei: 4).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "281" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 28).where(jirei: 1).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "282" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 28).where(jirei: 2).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "283" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 28).where(jirei: 3).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "284" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 28).where(jirei: 4).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "271" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 27).where(jirei: 1).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "272" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 27).where(jirei: 2).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "273" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 27).where(jirei: 3).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "274" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 27).where(jirei: 4).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "261" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 26).where(jirei: 1).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "262" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 26).where(jirei: 2).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "263" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 26).where(jirei: 3).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "264" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 26).where(jirei: 4).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "251" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 25).where(jirei: 1).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "252" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 25).where(jirei: 2).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "253" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 25).where(jirei: 3).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "254" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 25).where(jirei: 4).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "241" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 24).where(jirei: 1).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "242" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 24).where(jirei: 2).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "243" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 24).where(jirei: 3).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "244" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 24).where(jirei: 4).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "231" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 23).where(jirei: 1).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "232" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 23).where(jirei: 2).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "233" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 23).where(jirei: 3).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "234" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 23).where(jirei: 4).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "221" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 22).where(jirei: 1).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "222" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 22).where(jirei: 2).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "223" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 22).where(jirei: 3).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "224" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 22).where(jirei: 4).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "211" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 21).where(jirei: 1).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "212" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 21).where(jirei: 2).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "213" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 21).where(jirei: 3).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "214" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 21).where(jirei: 4).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "201" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 20).where(jirei: 1).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "202" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 20).where(jirei: 2).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "203" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 20).where(jirei: 3).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "204" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 20).where(jirei: 4).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "191" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 19).where(jirei: 1).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "192" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 19).where(jirei: 2).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "193" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 19).where(jirei: 3).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "194" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 19).where(jirei: 4).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "181" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 18).where(jirei: 1).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "182" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 18).where(jirei: 2).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "183" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 18).where(jirei: 3).includes(:comments)
      @id = params[:id] 
    elsif params[:id] == "184" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 18).where(jirei: 4).includes(:comments)
      @id = params[:id] 
    end
  end

  def show
    puts "--- answer id ------"
    puts params[:answer_id]
    puts "--------------------"  
    @comments = Comment.where(answer_id: params[:answer_id]).last
  
  end

  def edit
    @comments = Comment.where(answer_id: params[:answer_id]).last
  end

  def update
    comments = Comment.where(answer_id: @@aid).last  
    comments.update(comment_params)
    redirect_to answer_comments_path(@@jdg_id)
  end
  


  def create
     # ストロングパラメーターを使用
    jdg = Comment.new(comment_params)
    jdg.user_id = current_user.id
    jdg.answer_id = @@aid
    ans = Answer.find(@@aid)
    sum = 0
    if(ans.year == 30)then
        if(ans.jirei == 1)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
          end    
        end
    end
    
    if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and  (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
      jdg.save
      @@jdg_id = jdg.answer_id
      redirect_to  answer_comments_path(jdg.answer_id)
    else
      redirect_to  top_path  
    end
    
  end
  
  def new
    @answer = Answer.find(params[:id])
    @@aid = @answer.id
    @comment = Comment.new
    @comment.answer_id = @answer.id
    @@aa = params[:id]
    puts "#### @answer ########"
    puts @answer
    puts "#### @@aid ########"
    puts @@aid
    puts "#### @comment.answer_id ###"
    puts @comment.answer_id
    puts "#### @@aa #############"
    puts @@aa
    puts "#######################"
  end
  
  private
  def comment_params
    params.require(:comment).permit(:id,:answer_id,:user_id,:judge1,:ans1,:judge2,:ans2,:judge3,:ans3,:judge4,:ans4,:judge5,:ans5,:judge6,:ans6,:judge7,:ans7,:judge8,:ans8,:judge9,:ans9,:judge10,:ans10 )
  end
  
  
  
  
end



