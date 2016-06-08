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
    ads.append({imageUrl: "http://img.weiphone.net/1/h061/h23/bc9c8fe1img201606071030220_306__220.jpg", clickUrl: "http://www.baidu.com", title: "信用卡活动"})
    ads.append({imageUrl: "http://pic.sc.chinaz.com/files/pic/pic9/201508/apic14052.jpg", clickUrl: "http://www.baidu.com", title: "刷卡活动"})
    render json: {status: 0, errorMessage: '', ads: ads}
  end
  
end
