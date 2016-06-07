class AppController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def checkUpgrade
    render json: {status: 0, errorMessage: '', newestVersion: '', isNeedUpgrade: false, upgradeType: '', 
          upgradeUrl: 'http://www.baidu.com'}
  end
  
  def registerDevice
    render json: {status: 0, errorMessage: ''}
  end
end
