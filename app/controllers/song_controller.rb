class SongController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def getComments 
        comments = []
        comments.append({id: 1, name: 'jjh', isManager: false, userId: 'jjh', time: '1小时前', content: 'smile,:v::clap::thumbsup::cherries::hibiscus::sunny::pineapple::lollipop::smile::laughing::kissing_smiling_eyes::strawberry::heart_eyes:这个靠谱'})
        comments.append({id: 1, name: 'jjh', isManager: false,userId: 'frozenmoon', time: '1天前', content: '第1行：本来想写140字的，但是发现完全不够。'})
        comments.append({id: 1, name: 'jjh', isManager: false,userId: '一片雪', time: '10小时前', content: '第2行：1.这是一个新舞台，从来没有过的形式，又是以推动原创力量为口号的选秀。所以年轻的观众们开始沸腾了，任何一点清醒的批判都会被视为不合时宜的冷水。'})
        comments.append({id: 1, name: 'jjh', isManager: false,userId: '闲事半两 ', time: '5分钟前', content: '第3行：本人天生乐盲，所以只论歌词，不对曲调做任何评价。'})
        comments.append({id: 1, name: 'jjh', isManager: false,userId: 'jjh', time: '1小时前', content: '第4行：这片子让我想起《夜幕低垂》，原本想会不会是一个导演，回来一查，不是。里面的音乐，和一直穿插其中的光，还有一些气氛吧，给人的感觉都有点像。 另外还有一点点想到死神来了。'})
        comments.append({id: 1, name: 'jjh', isManager: false,userId: '凌紫冥', time: '1小时前', content: '第5行：简单一点'})
        comments.append({id: 1, name: 'jjh', isManager: false,userId: 'jjh', time: '1小时前', content: '第5行：test'})
        render json: {status: 0, errorMessage: '', totalNumber: 20, comments: comments}

  end
  
  def getLiveComments 
        comments = []
        comments.append({id: 1,name: 'jjh', isManager: false, userId: '那是当然', time: '1小时前', content: '11111'})
        comments.append({id: 1, name: 'jjh', isManager: false,userId: 'frozenmoon', time: '1天前', content: '222'})
        comments.append({id: 1,name: 'jjh', isManager: false, userId: '一片雪', time: '10小时前', content: '3333'})
        comments.append({id: 1,name: 'jjh', isManager: false, userId: '闲事半两 ”', time: '5分钟前', content: '444'})
        comments.append({id: 1, name: 'jjh', isManager: false,userId: '凌紫冥', time: '1小时前', content: '555'})
        comments.append({id: 1, name: 'jjh', isManager: false,userId: '凌紫冥', time: '1小时前', content: '666'})
        comments.append({id: 1, name: 'jjh', isManager: false,userId: 'jjh', time: '1小时前', content: '88888'})
        render json: {status: 0, errorMessage: '', totalNumber: 20, comments: comments}

  end
  
  def getLiveListenerCount
    render json: {status: 0, errorMessage: '', listerCount: 120}
  end

  def getSongInfo 
    render json: {status: 0, errorMessage: '你没有权限访问该课程', 
         song: { 
           album: {
             name: 'Dota直播', author: 'jjh', type: 'Live', id: 1000, image: 'http://jf.yhkamani.com/upload/201606/03/201606031712080665.png',
                  count: 50, listenCount: '2000人', desc: '企业无成本融资！', playing: true, isReady: true
          },
           id: "1001", name: '房间2', desc: 'des', date: '2016-01', 
          startTime: '2016-07-04 14:30:00', endTime: '2016-07-04 18:00:00',listenPeople: "120人",totalTime: 0.5 * 60 * 60, leftTime: 0.25 * 60 * 60,
            image: 'http://jjhaudio.hengdianworld.com/images/liveSampleImage.png',
            playing: true,
            shareTitle: "title",
            shareUrl: "http://www.sina.com.cn",
            hasAdvImage: false,
                       advImageUrl: "http://jjhaudio.hengdianworld.com/images/default.png",
                       advUrl: "http://www.baidu.com",
            advText: "这是广告内容",
            advImages: [{imageurl: "http://jf.yhkamani.com/upload/201606/13/201606131653198157.jpg", link: 'http://www.baidu.com', title: 'aaa'},
                    {imageurl: "http://jf.yhkamani.com/upload/201606/13/201606131653245913.jpg", link: 'http://www.qq.com', title: 'bbb'}],
            advScrollRate: 5,
            url: 'http://114.215.171.93:1935/live/myStream2/playlist.m3u8',listenPeople: "1000人",settings: {maxCommentWord: 20, canComment: true}}}
  end
end