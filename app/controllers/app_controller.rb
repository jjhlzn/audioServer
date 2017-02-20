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

  def getFunctionMessage
    render json: {
      status: 0,
      errorMessage: '',
      result: [
        {code: 'f_loan', value: 1},
        {code: 'f_car', value: 1},
        {code: 'f_class', value: 0},
        {code: 'f_user', value: 1}
      ]
    }
  end

  def clearFunctionMessage
    render json: {
      status: 0,
      errorMessage: ''
    }
  end

  def getCourseNotify
    render json: {
      status: 0,
      errorMessage: '',
      notifies: ['1. this is a notify messagexxxxx  iiiii  gggg!',   '2. this is another notify message!']
      #notifies: []
    }
  end

  def getHeaderAdvs 
    render json: {
      status: 0,
      errorMessage: '',
      result: [
        {
          #imageUrl: 'http://f.hiphotos.baidu.com/zhidao/pic/item/8b82b9014a90f60326b707453b12b31bb051eda9.jpg',
          imageUrl: 'http://img161.poco.cn/mypoco/myphoto/20100509/09/53310080201005090900481429150345234_004.jpg', 
      type: 'song',
         Params: [{key: 'songid', value: '10'}]}
      ]
    }
  end

  def GetFooterAdvs 
    render json: {
      status: 0,
      errorMessage: '',
      result: [
        {
          imageUrl: 'http://t1.niutuku.com/960/37/37-82841.jpg',
          title: '标题1',
          url: 'http://www.baidu.com'
        },
        {
          imageUrl: 'http://pic69.nipic.com/file/20150614/20677594_124458962000_2.jpg',
          title: '标题2',
          url: ''
        },
        {
          imageUrl: 'http://pic36.nipic.com/20131128/11748057_141932278338_2.jpg',
          title: '标题3',
          url: 'http://www.youku.com'
        },
        {
          imageUrl: 'http://tupian.enterdesk.com/2013/xll/008/15/6/5.jpg',
          title: '标题4',
          url: 'http://www.360.com'
        }
      ]
    }
  end

  def GetFunctionsInfos 
    render json: {
      status: 0,
      errorMessage: '',
      result: [ 
        {code: 'f_car',   isShow: true, message: 1},
        {code: 'f_class', isShow: true, message: 1}, 
        {code: 'f_user',  isShow: true, message: 0},
        {code: 'f_more',  isShow: true, message: 0},
        {code: 'f_loan', isShow: false, message: 1}, 
        {code: 'f_chongzhi', isShow: false, message: 1},
      ]
    }
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
