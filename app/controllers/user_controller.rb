class UserController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def login
    render json: {status: 0, errorMessage: '', name: '张三', nickname: 'jjh', level: 'VIP等级',
      boss: '李四', sex: '男', token: 'fsdfsdfsfdsfsf', 
      codeImageUrl: 'http://img.weiphone.net/1/h061/h23/bc9c8fe1img201606071030220_306__220.jpg'}
  end
  
  def updateToken
    render json: {status: 0, errorMessage: '', name: '张三', nickname: 'jjh', level: 'VIP等级',
      boss: '李四', sex: '男', token: 'fsdfsdfsfdsfsf', 
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

  def setNickName
    render json: {status: 0, errorMessage: ''}
  end
  
  
  def setSex
    render json: {status: 0, errorMessage: ''}
  end

  def uploadProfileImage
    render json: {status: 0, errorMessage: ''}
  end

  def getProfileImage
    send_file 'public/images/default.png', type: 'image/png', disposition: 'image'
  end

  def getStatData
    render json: {status: 0, errorMessage: '', jifen: '99880', chaifu: '10000', teamPeople: '120人',
     tuijianPeople: '25人', orderCount: '16笔'}
  end
end
