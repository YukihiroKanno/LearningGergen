class RanksController < ApplicationController
    
  def index
    if params[:id] == "301" then
      ans = Answer.where(year: 30).where(jirei: 1).includes(:comments)
      get_score(params[:id],30,1)
    elsif params[:id] == "302" then
      ans = Answer.where(year: 30).where(jirei: 2).includes(:comments) 
      get_score(params[:id],30,2)
    elsif params[:id] == "303" then
      ans = Answer.where(year: 30).where(jirei: 3).includes(:comments)     
      get_score(params[:id],30,3)
    elsif params[:id] == "304" then
      ans = Answer.where(year: 30).where(jirei: 4).includes(:comments)     
      get_score(params[:id],30,4)
    elsif params[:id] == "291" then
      ans = Answer.where(year: 29).where(jirei: 1).includes(:comments)     
      get_score(params[:id],29,1)
    elsif params[:id] == "292" then
      ans = Answer.where(year: 29).where(jirei: 2).includes(:comments)     
      get_score(params[:id],29,2)
    elsif params[:id] == "293" then
      ans = Answer.where(year: 29).where(jirei: 3).includes(:comments) 
      get_score(params[:id],29,3)
    elsif params[:id] == "294" then
      ans = Answer.where(year: 29).where(jirei: 4).includes(:comments)       
      get_score(params[:id],29,4)
    elsif params[:id] == "281" then
      ans = Answer.where(year: 28).where(jirei: 1).includes(:comments)       
      get_score(params[:id],28,1)
    elsif params[:id] == "282" then
      ans = Answer.where(year: 28).where(jirei: 2).includes(:comments)       
      get_score(params[:id],28,2)
    elsif params[:id] == "283" then
      ans = Answer.where(year: 28).where(jirei: 3).includes(:comments)       
      get_score(params[:id],28,3)
    elsif params[:id] == "284" then
      ans = Answer.where(year: 28).where(jirei: 4).includes(:comments)       
      get_score(params[:id],28,4)
    elsif params[:id] == "271" then
      ans = Answer.where(year: 27).where(jirei: 1).includes(:comments)       
      get_score(params[:id],27,1)
    elsif params[:id] == "272" then
      ans = Answer.where(year: 27).where(jirei: 2).includes(:comments)       
      get_score(params[:id],27,2)
    elsif params[:id] == "273" then
      ans = Answer.where(year: 27).where(jirei: 3).includes(:comments)             
      get_score(params[:id],27,3)
    elsif params[:id] == "274" then
      ans = Answer.where(year: 27).where(jirei: 4).includes(:comments)             
      get_score(params[:id],27,4)
    elsif params[:id] == "261" then
      ans = Answer.where(year: 26).where(jirei: 1).includes(:comments)             
      get_score(params[:id],26,1)
    elsif params[:id] == "262" then
      ans = Answer.where(year: 26).where(jirei: 2).includes(:comments)             
      get_score(params[:id],26,2)
    elsif params[:id] == "263" then
      ans = Answer.where(year: 26).where(jirei: 3).includes(:comments)             
      get_score(params[:id],26,3)
    elsif params[:id] == "264" then
      ans = Answer.where(year: 26).where(jirei: 4).includes(:comments)             
      get_score(params[:id],26,4)
    elsif params[:id] == "251" then
      ans = Answer.where(year: 25).where(jirei: 1).includes(:comments)             
      get_score(params[:id],25,1)
    elsif params[:id] == "252" then
      ans = Answer.where(year: 25).where(jirei: 2).includes(:comments)             
      get_score(params[:id],25,2)
    elsif params[:id] == "253" then
      ans = Answer.where(year: 25).where(jirei: 3).includes(:comments)             
      get_score(params[:id],25,3)
    elsif params[:id] == "254" then
      ans = Answer.where(year: 25).where(jirei: 4).includes(:comments)             
      get_score(params[:id],30,1)
    elsif params[:id] == "241" then
      ans = Answer.where(year: 24).where(jirei: 1).includes(:comments)              
      get_score(params[:id],24,1)
    elsif params[:id] == "242" then
      ans = Answer.where(year: 24).where(jirei: 2).includes(:comments)             
      get_score(params[:id],24,2)
    elsif params[:id] == "243" then
      ans = Answer.where(year: 24).where(jirei: 3).includes(:comments)             
      get_score(params[:id],24,3)
    elsif params[:id] == "244" then
      ans = Answer.where(year: 24).where(jirei: 4).includes(:comments)        
      get_score(params[:id],24,4)
    elsif params[:id] == "231" then
      ans = Answer.where(year: 23).where(jirei: 1).includes(:comments)              
      get_score(params[:id],23,1)
    elsif params[:id] == "232" then
      ans = Answer.where(year: 23).where(jirei: 2).includes(:comments)             
      get_score(params[:id],23,2)
    elsif params[:id] == "233" then
      ans = Answer.where(year: 23).where(jirei: 3).includes(:comments)             
      get_score(params[:id],23,3)
    elsif params[:id] == "234" then
      ans = Answer.where(year: 23).where(jirei: 4).includes(:comments)        
      get_score(params[:id],23,4)
    elsif params[:id] == "221" then
      ans = Answer.where(year: 22).where(jirei: 1).includes(:comments)              
      get_score(params[:id],22,1)
    elsif params[:id] == "222" then
      ans = Answer.where(year: 22).where(jirei: 2).includes(:comments)             
      get_score(params[:id],22,2)
    elsif params[:id] == "223" then
      ans = Answer.where(year: 22).where(jirei: 3).includes(:comments)             
      get_score(params[:id],22,3)
    elsif params[:id] == "224" then
      ans = Answer.where(year: 22).where(jirei: 4).includes(:comments)        
      get_score(params[:id],22,4)
    elsif params[:id] == "211" then
      ans = Answer.where(year: 21).where(jirei: 1).includes(:comments)              
      get_score(params[:id],21,1)
    elsif params[:id] == "212" then
      ans = Answer.where(year: 21).where(jirei: 2).includes(:comments)             
      get_score(params[:id],21,2)
    elsif params[:id] == "213" then
      ans = Answer.where(year: 21).where(jirei: 3).includes(:comments)             
      get_score(params[:id],21,3)
    elsif params[:id] == "214" then
      ans = Answer.where(year: 21).where(jirei: 4).includes(:comments)    
      get_score(params[:id],21,4)
    elsif params[:id] == "201" then
      ans = Answer.where(year: 20).where(jirei: 1).includes(:comments)              
      get_score(params[:id],20,1)
    elsif params[:id] == "202" then
      ans = Answer.where(year: 20).where(jirei: 2).includes(:comments)             
      get_score(params[:id],20,2)
    elsif params[:id] == "203" then
      ans = Answer.where(year: 20).where(jirei: 3).includes(:comments)             
      get_score(params[:id],20,3)
    elsif params[:id] == "204" then
      ans = Answer.where(year: 20).where(jirei: 4).includes(:comments) 
      get_score(params[:id],20,4)
    elsif params[:id] == "191" then
      ans = Answer.where(year: 19).where(jirei: 1).includes(:comments)              
      get_score(params[:id],19,1)
    elsif params[:id] == "192" then
      ans = Answer.where(year: 19).where(jirei: 2).includes(:comments)             
      get_score(params[:id],19,2)
    elsif params[:id] == "193" then
      ans = Answer.where(year: 19).where(jirei: 3).includes(:comments)             
      get_score(params[:id],19,3)
    elsif params[:id] == "194" then
      ans = Answer.where(year: 19).where(jirei: 4).includes(:comments) 
      get_score(params[:id],19,4)
    end
  end
  
  def get_score(id,year,jirei)
    ans = Answer.where(year: year).where(jirei: jirei).includes(:comments)   
    @id = id
    score = 0
    judge = "C"
    cnum = 0
    cnt = 1
    ans.each do |f| 
      if f.comments.average(:score).nil?
        score = 0
        judge = "未"
        cnum = 0
        ans.where(id: f.id).update( score: score, judge: judge,cnum: cnum )
      else    
        score =  f.comments.average(:score).round(0)
        f.comments
        if(score >= 60)
          judge = "A"
        elsif (score >= 50)
          judge = "B"
        elsif (score >= 40)
          judge = "C"
        else
          judge = "D"    
        end
      cnum = Comment.where(answer_id: f.id).count
      ans.where(id: f.id).update( score: score, judge: judge,cnum: cnum )
      
      puts "###########"
      puts f.id
      puts score
      puts judge
      puts cnt
      puts "###########"
      cnt = cnt + 1
     end        
    
    end
    @answers = Answer.where(year: year).where(jirei: jirei).order(score: "desc")  
    
    
  end

  def show
    puts "###########"
    puts  params[:id]
    puts "##########"
    @answers = Answer.where(id: params[:id]).where(year: 30).where(jirei: 1).includes(:comments)  
    
  end
  
  
  
end
