class AlbumController < ApplicationController
  def index 
    respond_to do |format| 
      
      format.json do
         albums = [] 
         albums.append({name: '艾薇儿的歌', author: 'Avril Lavigne', id: 8, image: 'images/avril.jpg',
                        count: 50, listenCount: '1000万'}) 
         albums.append({name: '袁腾飞讲历史精选集', author: '袁腾飞', id: 0, image: 'images/yuantengfei.jpg',
                        count: 32, listenCount: '10万'}) 
         albums.append({name: '久石让の唯美纯音乐', author: '久石让', id: 1, image: 'images/jiushirang.jpeg', 
                        count: 10, listenCount: '19万'}) 
         albums.append({name: '腾飞说春秋战国', author: '袁腾飞', id: 2, image: 'images/shuochuqiuzhanguo.jpg', 
                        count: 10, listenCount: '1000万'})
         albums.append({name: '文景之治', author: '未知', id: 3, image: 'images/wenjinzhizhi.jpg', 
                        count: 10, listenCount: '1000'}) 
         albums.append({name: '一千零一夜', author: '梁文道', id: 4, image: 'images/yiqianlinyiye.jpg', 
                        count: 10, listenCount: '123万'}) 
         albums.append({name: '罗辑思维', author: '罗振宇', id: 5, image: 'images/luojisiwei.jpg', 
                        count: 100, listenCount: '150万'}) 
         albums.append({name: '无法言喻', author: '徐薇', id: 6, image: 'images/wufayanyu.jpg', 
                        count: 50, listenCount: '150万'}) 
         albums.append({name: '三国', author: '谢涛', id: 7, image: 'images/sanguo.jpg', 
                        count: 90, listenCount: '18万'}) 
         render json: {status: 0, errorMessage: '', totalNumber: 20, albums: albums} 
       end
    end
  end
  
  def getSongs
    respond_to do |format|
      format.json do 
        songs = songs_8()
        
        
        render json: {status: 0, errorMessage: '', songs: songs}
      end
    end
  end
  
  
  private 
  def songs_1 
    songs = []
    songs.append({name: 'innocence', desc: 'des', date: '2016-01', url: 'songs/innocence.mp3'})
    songs.append({name: '后来', desc: 'des', date: '2016-01', url: 'songs/houlai.mp3'})
    songs.append({name: '手掌心', desc: 'des', date: '2016-01', url: 'songs/shouzhangxin.mp3'})
    songs.append({name: 'test', desc: 'des', date: '2016-01', url: 'songs/test.mp3'})
    return songs
  end
  
  def songs_2 
    songs = []
    songs.append({name: 'innocence', desc: 'des', date: '2016-01', url: 'songs/innocence.mp3'})
    songs.append({name: '后来', desc: 'des', date: '2016-01', url: 'songs/houlai.mp3'})
    songs.append({name: '手掌心', desc: 'des', date: '2016-01', url: 'songs/shouzhangxin.mp3'})
    songs.append({name: 'test', desc: 'des', date: '2016-01', url: 'songs/test.mp3'})
    return songs
  end
  
  def songs_8 
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
end
