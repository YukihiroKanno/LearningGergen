class CommentsController < ApplicationController
  
  @@aid =0
  @@aa =""
  @@cc = ""

  def index
    if params[:id] == "301" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 30).where(jirei: 1).includes(:comments)
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
    redirect_to comment_path
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



