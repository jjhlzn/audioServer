class AppController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def checkUpgrade
    render json: {status: 0, errorMessage: '', newestVersion: '', isNeedUpgrade: false, upgradeType: 'optional', 
          upgradeUrl: 'http://www.baidu.com'}
  end
  
  def registerDevice
    render json: {status: 0, errorMessage: ''}
  end
  
  
  def getAds
    ads = []
    ads.append({imageUrl: "http://114.215.236.171:6012/upload/201606/13/201606131653198157.jpg", clickUrl: "http://www.baidu.com", title: "信用卡活动"})
    ads.append({imageUrl: "http://114.215.236.171:6012/upload/201606/13/201606131653245913.jpg", clickUrl: "http://www.baidu.com", title: "刷卡活动"})
    render json: {status: 0, errorMessage: '', ads: ads}
  end

  def getParameterInfo 
    render json: {status: 0, errorMessage: '', result: [{keyword: 'livedescription', value: '2012'}]}
  end
  
end
