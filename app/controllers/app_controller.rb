class AppController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def checkUpgrade
    render json: {status: 0, errorMessage: '', newestVersion: '', isNeedUpgrade: false, upgradeType: '', 
          upgradeUrl: 'http://www.baidu.com'}
  end
  
  def registerDevice
    render json: {status: 0, errorMessage: ''}
  end
  
  
  def getAds
    ads = []
    ads.append({imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPU-BPx2-AI-2RypBwN7LaTDiPhSSBrqSyMFfoC5agCEfcsNBK", clickUrl: "http://www.baidu.com", title: "信用卡活动"})
    ads.append({imageUrl: "http://pic.sc.chinaz.com/files/pic/pic9/201508/apic14052.jpg", clickUrl: "http://www.baidu.com", title: "刷卡活动"})
    render json: {status: 0, errorMessage: '', ads: ads}
  end
  
end
