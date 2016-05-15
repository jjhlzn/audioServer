class UserController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def login
    render json: {status: 0, errorMessage: '', name: 'test', token: 'fsdfsdfsfdsfsf'}
  end
  
  
  def getPhoneCheckCode
    render json: {status: 0, errorMessage: ''}
  end

  def signup 
    render json: {status: 0, errorMessage: ''}
  end
  
  def getPassword
    render json: {status: 0, errorMessage: ''}
  end
end
