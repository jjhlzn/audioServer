class AppController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def checkUpgrade
    render json: {status: 0, errorMessage: '', newestVersion: '', isNeedUpgrade: false, upgradeType: 'force', upgradeFileUrl: '',
          upgradeUrl: 'http://apk.r1.market.hiapk.com/data/upload/apkres/2016/8_2/14/com.chinaideal.bkclient.tabmain_024203.apk'}
  end
  
  def registerDevice
    render json: {status: 0, errorMessage: ''}
  end
  
  
  def getAds
    ads = []
    ads.append({imageUrl: "http://jf.yhkamani.com/upload/201606/13/201606131653198157.jpg", clickUrl: "http://www.baidu.com", title: "信用卡活动"})
    ads.append({imageUrl: "http://jf.yhkamani.com/upload/201606/13/201606131653245913.jpg", clickUrl: "http://www.qq.com", title: "刷卡活动"})
    render json: {status: 0, errorMessage: '', ads: ads}
  end

  def getParameterInfo 
    render json: {status: 0, errorMessage: '', result: [{keyword: 'livedescription', value: ''},
    {keyword: 'vipdescription', value: ''},
    {keyword: 'liveCourseName', value: '直播课程'},
    {keyword: 'payCourseName', value: '付费课程'},
    {keyword: 'beforedescription', value: 'xxxx'}]}
  end

  def buyvip 
    respond_to do |format|
      format.html 
    end
  end

  def wechatpay
    respond_to do |format|
      format.html
    end
  end
  
end
