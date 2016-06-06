class UserController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def login
    render json: {status: 0, errorMessage: '', name: 'test', token: 'fsdfsdfsfdsfsf'}
  end
  
  def logout
    render json: {status: 0, errorMessage: ''}
  end
  
  
  def getPhoneCheckCode
    render json: {status: 0, errorMessage: ''}
  end

  def signup 
    print(params)
    
    render json: {status: 0, errorMessage: ''}
  end
  
  def getPassword
    render json: {status: 0, errorMessage: ''}
  end
  
  def resetPassword
    render json: {status: 0, errorMessage: ''}
  end
  
  def getClientNumber 
    render json: {status: 0, errorMessage: '', peopleCount: 120}
  end
end
