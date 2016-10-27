require 'yaml'

class AlbumController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index 
    type = params[:request][:type]
    if type == "Common" 
      albums = get_common_albums()
      totalNumber = 20
    elsif type == "Vip"
      albums = get_vip_albums()
      totalNumber = 2
    else 
      albums = get_live_albums()
      totalNumber = 2
    end
    render json: {status: 0, errorMessage: '', totalNumber: totalNumber, albums: albums} 
  end
  
  def getSongs

    
    id = (params[:request][:album][:id]).to_i
    print("id = #{id}")
    if (id >= 1000) 
      songs = songs_live()
    elsif (id >= 100) 
      songs = songs_vip()
      render json: {status: -10, errorMessage: '你没有权限访问该课程', totalNumber: 0, songs: []}
      return
    else 
      songs = songs_common()
    end
    
    if params[:request][:test] == "resend"
      render json: {status: 0, errorMessage: '', totalNumber: songs.length, songs: songs}
    else
      render json: {status: -11, errorMessage: '', totalNumber: songs.length, songs: songs}
    end
  end
  
  def search 
      albums = [] 
      albums.append({name: '久石让の唯美纯音乐', author: '久石让', type: 'Common', id: 1, image: 'http://jjhaudio.hengdianworld.com/images/default.png', 
                     count: 10, listenCount: '19万', desc: 'test'}) 
      albums.append({name: '三国', author: '谢涛',type: 'Common', id: 7, image: 'http://jjhaudio.hengdianworld.com/images/sanguo.jpg', 
                                    count: 90, listenCount: '18万', desc: 'test'}) 
      albums.append({name: '腾飞说春秋战国', author: '袁腾飞',type: 'Common', id: 2, image: 'http://jjhaudio.hengdianworld.com/images/shuochuqiuzhanguo.jpg', 
                     count: 10, listenCount: '1000万', desc: 'test'})
      albums.append({name: '文景之治', author: '未知', id: 3,type: 'Common', image: 'http://jjhaudio.hengdianworld.com/images/wenjinzhizhi.jpg', 
                     count: 10, listenCount: '1000', desc: 'test'}) 
      albums.append({name: '一千零一夜', author: '梁文道',type: 'Common', id: 4, image: 'http://jjhaudio.hengdianworld.com/images/yiqianlinyiye.jpg', 
                     count: 10, listenCount: '123万', desc: 'test'}) 
      albums.append({name: '罗辑思维', author: '罗振宇',type: 'Common', id: 5, image: 'http://jjhaudio.hengdianworld.com/images/luojisiwei.jpg', 
                     count: 100, listenCount: '150万', desc: 'test'}) 
      albums.append({name: '无法言喻', author: '徐薇',type: 'Common', id: 6, image: 'http://jjhaudio.hengdianworld.com/images/wufayanyu.jpg', 
                     count: 50, listenCount: '150万', desc: 'test'}) 
      render json: {status: 0, errorMessage: '', totalNumber: 15, albums: albums} 
    
  end
  
  def getHotSearchWords 
     render json: {status: 0, errorMessage: '', keywords: ["信用卡", "提高额度", "办卡"]} 
  end
  
  
  private 
  def get_live_albums 
    albums = [] 
    albums.append({name: 'Dota直播', author: 'jjh', type: 'Live', id: 1000, image: 'http://jf.yhkamani.com/upload/201606/03/201606031712080665.png',
                   count: 50, listenCount: '2000人', desc: '企业无成本融资！', playing: true, isReady: true}) 

    albums.append({name: 'War3直播', author: '袁腾飞', type: 'Live', id: 1001, image: 'http://jf.yhkamani.com/upload/201606/03/201606031712080665.png',
                   count: 32, listenCount: '10人', desc: 'test',playing: false, isReady: false}) 


    albums.append({name: '视频直播', author: 'jjh', type: 'Live', id: 1000, image: 'http://jf.yhkamani.com/upload/201606/03/201606031712080665.png',
                   count: 50, listenCount: '2000人', desc: '企业无成本融资！', playing: true, isReady: true}) 
    return albums
  end
  
  def get_vip_albums 
    albums = [] 
    albums.append({name: 'Ruby编程', author: 'Avril Lavigne', type: 'Vip',  id: 100, image: 'http://jjhaudio.hengdianworld.com/images/avril.jpg',
                   count: 50, listenCount: '10000人', desc: 'test', playing: true, isReady: true}) 
    albums.append({name: 'C#编程', author: '袁腾飞', type: 'Vip',  id: 101, image: 'http://jjhaudio.hengdianworld.com/images/yuantengfei.jpg',
                   count: 32, listenCount: '990人', desc: 'test', playing: true, isReady: true}) 
    albums.append({name: '架构设计', author: '久石让', type: 'Vip',  id: 102, image: 'http://jjhaudio.hengdianworld.com/images/jiushirang.jpeg',
                  count: 32, listenCount: '878人', desc: 'test', playing: true, isReady: true}) 
    return albums
  end
  
  def get_common_albums
    albums = [] 
    albums.append({name: '艾薇儿的歌', author: 'Avril Lavigne', type: 'Common',  id: 8, image: 'http://jjhaudio.hengdianworld.com/images/default.png',
                   count: 50, listenCount: '1000万', desc: 'test'}) 
    albums.append({name: '袁腾飞讲历史精选集', author: '袁腾飞', type: 'Common',id: 0, image: 'http://jjhaudio.hengdianworld.com/images/yuantengfei.jpg',
                   count: 32, listenCount: '10万', desc: 'test'}) 
    albums.append({name: '久石让の唯美纯音乐', author: '久石让', type: 'Common', id: 1, image: 'http://jjhaudio.hengdianworld.com/images/default.png', 
                   count: 10, listenCount: '19万', desc: 'test'}) 
    albums.append({name: '腾飞说春秋战国', author: '袁腾飞',type: 'Common', id: 2, image: 'http://jjhaudio.hengdianworld.com/images/shuochuqiuzhanguo.jpg', 
                   count: 10, listenCount: '1000万', desc: 'test'})
    albums.append({name: '文景之治', author: '未知', id: 3,type: 'Common', image: 'http://jjhaudio.hengdianworld.com/images/wenjinzhizhi.jpg', 
                   count: 10, listenCount: '1000', desc: 'test'}) 
    albums.append({name: '一千零一夜', author: '梁文道',type: 'Common', id: 4, image: 'http://jjhaudio.hengdianworld.com/images/yiqianlinyiye.jpg', 
                   count: 10, listenCount: '123万', desc: 'test'}) 
    albums.append({name: '罗辑思维', author: '罗振宇',type: 'Common', id: 5, image: 'http://jjhaudio.hengdianworld.com/images/luojisiwei.jpg', 
                   count: 100, listenCount: '150万', desc: 'test'}) 
    albums.append({name: '无法言喻', author: '徐薇',type: 'Common', id: 6, image: 'http://jjhaudio.hengdianworld.com/images/wufayanyu.jpg', 
                   count: 50, listenCount: '150万', desc: 'test'}) 
    albums.append({name: '三国', author: '谢涛',type: 'Common', id: 7, image: 'http://jjhaudio.hengdianworld.com/images/sanguo.jpg', 
                   count: 90, listenCount: '18万', desc: 'test'}) 
    return albums
  end
  

  
  def songs_common
    songs = []
    songs.append({id: "1", name: 'Wish You Were Here', desc: 'des', date: '2016-01', image: 'http://jjhaudio.hengdianworld.com/images/sanguo.jpg', 
       url: 'http://jjhaudio.hengdianworld.com/songs/avril/Wish_You_Were_Here.mp3', settings: {maxCommentWord: 20, canComment: true}})
       
    songs.append({id: "2",name: 'innocence', desc: 'des', date: '2016-01', image: 'http://jjhaudio.hengdianworld.com/images/sanguo.jpg',
       url: 'http://jjhaudio.hengdianworld.com/songs/avril/innocence.mp3', settings: {maxCommentWord: 20, canComment: true}})
       
    songs.append({id: "3",name: 'Everybody Hurts', desc: 'des', date: '2016-01', image: 'http://jjhaudio.hengdianworld.com/images/sanguo.jpg',
       url: 'http://jjhaudio.hengdianworld.com/songs/avril/Everybody_Hurts.mp3', settings: {maxCommentWord: 20, canComment: true}})
       
    songs.append({id: "4",name: 'Fly', desc: 'des', date: '2016-01', image: 'http://jjhaudio.hengdianworld.com/images/sanguo.jpg', 
       url: 'http://jjhaudio.hengdianworld.com/songs/avril/Fly.mp3', settings: {maxCommentWord: 20, canComment: true}})
       
    songs.append({id: "5",name: 'Girlfriend', desc: 'des', date: '2016-01', image: 'http://jjhaudio.hengdianworld.com/images/sanguo.jpg', 
       url: 'http://jjhaudio.hengdianworld.com/songs/avril/Girlfriend.mp3', settings: {maxCommentWord: 20, canComment: true}})
       
    songs.append({id: "6",name: "I'm With You", desc: 'des', date: '2016-01', image: 'http://jjhaudio.hengdianworld.com/images/sanguo.jpg',
       url: 'http://jjhaudio.hengdianworld.com/songs/avril/Im_With_You.mp3', settings: {maxCommentWord: 20, canComment: true}})
       
    songs.append({id: "7",name: 'My Happy Ending', desc: 'des', date: '2016-01', image: 'http://jjhaudio.hengdianworld.com/images/sanguo.jpg',
       url: 'http://jjhaudio.hengdianworld.com/songs/avril/My_Happy_Ending.mp3', settings: {maxCommentWord: 20, canComment: true}})
       
    songs.append({id: "9",name: 'Sk8er Boi', desc: 'des', date: '2016-01', image: 'http://jjhaudio.hengdianworld.com/images/sanguo.jpg',
       url: 'http://jjhaudio.hengdianworld.com/songs/avril/Sk8er_Boi.mp3', settings: {maxCommentWord: 20, canComment: true}})
       
    songs.append({id: "10",name: 'What The Hell', desc: 'des', date: '2016-01', image: 'http://jjhaudio.hengdianworld.com/images/sanguo.jpg',
       url: 'http://jjhaudio.hengdianworld.com/songs/avril/What_The_Hell.mp3', settings: {maxCommentWord: 20, canComment: true}})
       
    songs.append({id: "11",name: "When You're Gone", desc: 'des', date: '2016-01', image: 'http://jjhaudio.hengdianworld.com/images/sanguo.jpg', 
       url: 'http://jjhaudio.hengdianworld.com/songs/avril/When_Youre_Gone.mp3', settings: {maxCommentWord: 20, canComment: true}})
       
    return songs
  end
  
  def songs_vip
    songs = []
    songs.append({id: "1000", name: '房间1', desc: 'des', date: '2016-01', 
      startTime: '2016-06-10 09:00:00', endTime: '2016-06-10 13:00:00', totalTime: 0.5 * 60 * 60, leftTime: 0.25 * 60 * 60,
        image: 'http://jjhaudio.hengdianworld.com/images/liveSampleImage.png', status: 'end', 
        hasAdvImage: true,
                       advImageUrl: "http://jjhaudio.hengdianworld.com/images/default.png",
                       advUrl: "http://www.baidu.com",
        advScrollRate: 5,
        type: 'audio',
        advText: "",
        advImages: [{imageurl: "http://jf.yhkamani.com/upload/201606/13/201606131653198157.jpg", link: 'http://www.baidu.com', title: ''},
                    {imageurl: "http://jf.yhkamani.com/upload/201606/13/201606131653245913.jpg", link: 'http://www.qq.com', title: ''}],
        url: 'http://114.215.171.93:1935/vod/mp4:sample.mp4/playlist.m3u8', listenPeople: "1200人", settings: {maxCommentWord: 20, canComment: true}})


    songs.append({id: "1001", name: '房间2', desc: 'des', date: '2016-01', 
      startTime: '2016-06-10 09:00:00', endTime: '2016-06-10 13:00:00', totalTime: 0.5 * 60 * 60, leftTime: 0.25 * 60 * 60,
        image: 'http://jjhaudio.hengdianworld.com/images/liveSampleImage.png', status: 'end', 
        hasAdvImage: true,
                       advImageUrl: "http://jjhaudio.hengdianworld.com/images/default.png",
                       advUrl: "http://www.baidu.com",
        advScrollRate: 5,
        type: 'audio',
        advText: "",
        advImages: [{imageurl: "http://jf.yhkamani.com/upload/201606/13/201606131653198157.jpg", link: 'http://www.baidu.com', title: ''},
                    {imageurl: "http://jf.yhkamani.com/upload/201606/13/201606131653245913.jpg", link: 'http://www.qq.com', title: ''}],
        url: 'http://114.215.171.93:1935/vod/mp4:sample.mp4/playlist.m3u8', listenPeople: "1200人", settings: {maxCommentWord: 20, canComment: true}})
    return songs
  end
  
  def songs_live
    songs = []
    
    songs.append({id: "1000", name: '房间1（音频）', desc: 'des', date: '2016-01', 
      startTime: '2016-06-10 09:00:00', endTime: '2016-06-10 13:00:00', totalTime: 0.5 * 60 * 60, leftTime: 0.25 * 60 * 60,
        image: 'http://jjhaudio.hengdianworld.com/images/liveSampleImage.png', status: 'end', 
        hasAdvImage: true,
                       advImageUrl: "http://jjhaudio.hengdianworld.com/images/default.png",
                       advUrl: "http://www.baidu.com",
        advScrollRate: 5,
        playing: true,
        type: 'audio',
        advText: "",
        advImages: [{imageurl: "http://jf.yhkamani.com/upload/201606/13/201606131653198157.jpg", link: 'http://www.baidu.com', title: 'aaa'},
                    {imageurl: "http://jf.yhkamani.com/upload/201606/13/201606131653245913.jpg", link: 'http://www.qq.com', title: 'bbb'}],
        url: 'http://114.215.171.93:1935/vod/mp4:sample.mp4/playlist.m3u8', listenPeople: "1200人", settings: {maxCommentWord: 20, canComment: true}})
        

        
    songs.append({id: "1001", name: '房间2（视频）', desc: 'des', date: '2016-01', 
      startTime: '2016-06-10 09:00:00', endTime: '2016-06-10 13:00:00', totalTime: 0.5 * 60 * 60, leftTime: 0.25 * 60 * 60,
        image: 'http://jjhaudio.hengdianworld.com/images/liveSampleImage.png', status: 'end', 
        hasAdvImage: true,
                       advImageUrl: "http://jjhaudio.hengdianworld.com/images/default.png",
                       advUrl: "http://www.baidu.com",
        advScrollRate: 5,
        playing: true,
        type: 'video',
        advText: "",
        advImages: [{imageurl: "http://jf.yhkamani.com/upload/201606/13/201606131653198157.jpg", link: 'http://www.baidu.com', title: 'aaa'},
                    {imageurl: "http://jf.yhkamani.com/upload/201606/13/201606131653245913.jpg", link: 'http://www.qq.com', title: 'bbb'}],
        url: 'http://devimages.apple.com/samplecode/adDemo/ad.m3u8', listenPeople: "1200人", settings: {maxCommentWord: 20, canComment: true}})
    
    return songs
  end
end
