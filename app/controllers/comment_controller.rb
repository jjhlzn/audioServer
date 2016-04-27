class CommentController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:create]
  
  def create 
    render json: {status: 0, errorMessage: ''}
  end
end
