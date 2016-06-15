class UserController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def login
    render json: {status: 0, errorMessage: '', name: 'test', sex: '男', token: 'fsdfsdfsfdsfsf', 
      codeImageUrl: 'http://img.weiphone.net/1/h061/h23/bc9c8fe1img201606071030220_306__220.jpg'}
  end
  
  def updateToken
    render json: {status: 0, errorMessage: '', name: 'test', sex: '男', token: 'fsdfsdfsfdsfsf', 
      codeImageUrl: 'http://img.weiphone.net/1/h061/h23/bc9c8fe1img201606071030220_306__220.jpg'}
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
  
  def setName
    render json: {status: 0, errorMessage: ''}
  end
  
  def setSex
    render json: {status: 0, errorMessage: ''}
  end
end
