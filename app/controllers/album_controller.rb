require 'yaml'

class AlbumController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index 
    type = params[:request][:type]
    if type == "common" 
      albums = get_common_albums()
      totalNumber = 20
    elsif type == "vip"
      albums = get_vip_albums()
      totalNumber = 3
    else 
      albums = get_live_albums()
      totalNumber = 2
    end
    render json: {status: 0, errorMessage: '', totalNumber: totalNumber, albums: albums} 
  end
  
  def getSongs

    #print(id.length)
    id = YAML.load(params[:request][:album])['id']
    if (id >= 1000) 
      songs = songs_live()
    elsif (id >= 100) 
      songs = songs_vip()
    else 
      songs = songs_common()
    end
    
    render json: {status: 0, errorMessage: '', songs: songs}
  end
  
  
  private 
  def get_live_albums 
    albums = [] 
    albums.append({name: 'Dota直播', author: 'Avril Lavigne', type: 'Live', id: 1000, image: 'images/avril.jpg',
                   count: 50, listenCount: '1000万'}) 
    albums.append({name: 'War3直播', author: '袁腾飞', type: 'Live', id: 1001, image: 'images/yuantengfei.jpg',
                   count: 32, listenCount: '10万'}) 
    return albums
  end
  
  def get_vip_albums 
    albums = [] 
    albums.append({name: 'Ruby编程', author: 'Avril Lavigne', type: 'Vip',  id: 100, image: 'images/avril.jpg',
                   count: 50, listenCount: '1000万'}) 
    albums.append({name: 'C#编程', author: '袁腾飞', type: 'Vip',  id: 101, image: 'images/yuantengfei.jpg',
                   count: 32, listenCount: '10万'}) 
    albums.append({name: '架构设计', author: '久石让', type: 'Vip',  id: 102, image: 'images/jiushirang.jpeg',
                  count: 32, listenCount: '10万'}) 
    return albums
  end
  
  def get_common_albums
    albums = [] 
    albums.append({name: '艾薇儿的歌', author: 'Avril Lavigne', type: 'Common',  id: 8, image: 'images/default.jpg',
                   count: 50, listenCount: '1000万'}) 
    albums.append({name: '袁腾飞讲历史精选集', author: '袁腾飞', type: 'Common',id: 0, image: 'images/yuantengfei.jpg',
                   count: 32, listenCount: '10万'}) 
    albums.append({name: '久石让の唯美纯音乐', author: '久石让', type: 'Common', id: 1, image: 'images/default.jpeg', 
                   count: 10, listenCount: '19万'}) 
    albums.append({name: '腾飞说春秋战国', author: '袁腾飞',type: 'Common', id: 2, image: 'images/shuochuqiuzhanguo.jpg', 
                   count: 10, listenCount: '1000万'})
    albums.append({name: '文景之治', author: '未知', id: 3,type: 'Common', image: 'images/wenjinzhizhi.jpg', 
                   count: 10, listenCount: '1000'}) 
    albums.append({name: '一千零一夜', author: '梁文道',type: 'Common', id: 4, image: 'images/yiqianlinyiye.jpg', 
                   count: 10, listenCount: '123万'}) 
    albums.append({name: '罗辑思维', author: '罗振宇',type: 'Common', id: 5, image: 'images/luojisiwei.jpg', 
                   count: 100, listenCount: '150万'}) 
    albums.append({name: '无法言喻', author: '徐薇',type: 'Common', id: 6, image: 'images/wufayanyu.jpg', 
                   count: 50, listenCount: '150万'}) 
    albums.append({name: '三国', author: '谢涛',type: 'Common', id: 7, image: 'images/sanguo.jpg', 
                   count: 90, listenCount: '18万'}) 
    return albums
  end
  

  
  def songs_common
    songs = []
    songs.append({name: 'Wish You Were Here', desc: 'des', date: '2016-01', url: 'songs/avril/Wish_You_Were_Here.mp3'})
    songs.append({name: 'innocence', desc: 'des', date: '2016-01', url: 'songs/avril/innocence.mp3'})
    songs.append({name: 'Everybody Hurts', desc: 'des', date: '2016-01', url: 'songs/avril/Everybody_Hurts.mp3'})
    songs.append({name: 'Fly', desc: 'des', date: '2016-01', url: 'songs/avril/Fly.mp3'})
    songs.append({name: 'Girlfriend', desc: 'des', date: '2016-01', url: 'songs/avril/Girlfriend.mp3'})
    songs.append({name: "I'm With You", desc: 'des', date: '2016-01', url: 'songs/avril/Im_With_You.mp3'})
    songs.append({name: 'My Happy Ending', desc: 'des', date: '2016-01', url: 'songs/avril/My_Happy_Ending.mp3'})
    songs.append({name: 'Sk8er Boi', desc: 'des', date: '2016-01', url: 'songs/avril/Sk8er_Boi.mp3'})
    songs.append({name: 'What The Hell', desc: 'des', date: '2016-01', url: 'songs/avril/What_The_Hell.mp3'})
    songs.append({name: "When You're Gone", desc: 'des', date: '2016-01', url: 'songs/avril/When_Youre_Gone.mp3'})
    return songs
  end
  
  def songs_vip
    songs = []
    songs.append({name: 'Wish You Were Here', desc: 'des', date: '2016-01', url: 'songs/avril/Wish_You_Were_Here.mp3'})
    songs.append({name: 'innocence', desc: 'des', date: '2016-01', url: 'songs/avril/innocence.mp3'})
    songs.append({name: 'Everybody Hurts', desc: 'des', date: '2016-01', url: 'songs/avril/Everybody_Hurts.mp3'})
    return songs
  end
  
  def songs_live
    songs = []
    
    songs.append({name: 'Wish You Were Here', desc: 'des', date: '2016-01', url: 'http://114.215.171.93:1935/live/myStream/playlist.m3u8'})
    return songs
  end
end
