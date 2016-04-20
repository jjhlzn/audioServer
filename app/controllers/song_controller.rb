class SongController < ApplicationController
  
  def getComments 
    respond_to do |format|
      format.json do
        comments = []
        comments.append({id: 1, userId: '那是当然', time: '1小时前', content: '真的让人感到这档节目还是值得关注的，是从张岭开始的。这个中年男人挎着贝斯，半是牢骚半是悲苦地唱出那句“我今天才知道，她跟别人也这么说”的时候，你似乎就能听到央视这台巨大的机器上，某一个螺丝在悄悄松动。'})
        comments.append({id: 1, userId: 'frozenmoon', time: '1天前', content: '本来想写140字的，但是发现完全不够。不够表达，甚至不够郑重。 新年伊始，真高兴就有了这么接地气的节目。 《中国好歌曲》看的我特别爽。这么多选秀节目，在选手介绍自己的时候我们快进，因为所有台词都老套，不管真假都没有人愿意了解；在老师点评的时候快进，因为没什么营养，那些赞美的词，谁都百度的来，最后对观众有用的，只有唱歌那部分。'})
        comments.append({id: 1, userId: '一片雪', time: '10小时前', content: '1.这是一个新舞台，从来没有过的形式，又是以推动原创力量为口号的选秀。所以年轻的观众们开始沸腾了，任何一点清醒的批判都会被视为不合时宜的冷水。'})
        comments.append({id: 1, userId: '闲事半两 ”', time: '5分钟前', content: '本人天生乐盲，所以只论歌词，不对曲调做任何评价。'})
        comments.append({id: 1, userId: '凌紫冥', time: '1小时前', content: '这片子让我想起《夜幕低垂》，原本想会不会是一个导演，回来一查，不是。里面的音乐，和一直穿插其中的光，还有一些气氛吧，给人的感觉都有点像。 另外还有一点点想到死神来了。'})
        render json: {status: 0, errorMessage: '', comments: comments}
      end
    end
  
  
  end
  
end
