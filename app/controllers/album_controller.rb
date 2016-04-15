class AlbumController < ApplicationController
  def index 
    respond_to do |format| 
      
      format.json do
         albums = [] 
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
         render json: {status: 0, errorMessage: '', albums: albums} 
       end
    end
  end
  
  def getSongs
    respond_to do |format|
      format.json do 
        songs = []
        songs.append({name: 'test', desc: 'des', date: '2016-01', url: 'songs/innocence.mp3'})
        songs.append({name: 'test', desc: 'des', date: '2016-01', url: 'songs/houlai.mp3'})
        songs.append({name: 'test', desc: 'des', date: '2016-01', url: 'songs/shouzhangxin.mp3'})
        songs.append({name: 'test', desc: 'des', date: '2016-01', url: 'songs/test.mp3'})
        
        render json: {status: 0, errorMessage: '', songs: songs}
      end
    end
  end
end
