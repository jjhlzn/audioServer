class CommentController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
  def create 
    render json: {status: 0, errorMessage: ''}
  end
  
  def addLive 
    comments = []
    comments.append({id: 1, userId: '那是当然', time: '1小时前', content: '11111'})
    comments.append({id: 1, userId: 'frozenmoon', time: '1天前', content: '222'})
    render json: {status: 0, errorMessage: '', comments: comments}
  end
end
