class SongController < ApplicationController
  
  def getComments 
    respond_to do |format|
      format.json do
        comments = []
        comments.append({id: 1, userId: '那是当然', time: '1小时前', content: '第0行：真的让人感到这档节目还是值得关注的，是从张岭开始的。'})
        comments.append({id: 1, userId: 'frozenmoon', time: '1天前', content: '第1行：本来想写140字的，但是发现完全不够。不够表达，甚至不够郑重。 新年伊始，真高兴就有了这么接地气的节目。 《中国好歌曲》看的我特别爽。这么多选秀节目，在选手介绍自己的时候我们快进，因为所有台词都老套，不管真假都没有人愿意了解.'})
        comments.append({id: 1, userId: '一片雪', time: '10小时前', content: '第2行：1.这是一个新舞台，从来没有过的形式，又是以推动原创力量为口号的选秀。所以年轻的观众们开始沸腾了，任何一点清醒的批判都会被视为不合时宜的冷水。'})
        comments.append({id: 1, userId: '闲事半两 ”', time: '5分钟前', content: '第3行：本人天生乐盲，所以只论歌词，不对曲调做任何评价。'})
        comments.append({id: 1, userId: '凌紫冥', time: '1小时前', content: '第4行：这片子让我想起《夜幕低垂》，原本想会不会是一个导演，回来一查，不是。里面的音乐，和一直穿插其中的光，还有一些气氛吧，给人的感觉都有点像。 另外还有一点点想到死神来了。'})
        comments.append({id: 1, userId: '凌紫冥', time: '1小时前', content: '第5行：yrdy'})
        render json: {status: 0, errorMessage: '', comments: comments}
      end
    end
  
  
  end
  
end
