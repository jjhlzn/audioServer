class CommentController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
  def create 
    render json: {status: 0, errorMessage: ''}
  end
  
  def addLive 
    comments = []
    comments.append({id: 1, userId: '那是当然', name: 'jjh', time: '1小时前', content: '11111'})
    comments.append({id: 1, userId: 'frozenmoon', name: 'jjh', time: '1天前', content: '222'})
    render json: {status: 0, errorMessage: '', name: 'jjh', comments: comments}
  end
end
