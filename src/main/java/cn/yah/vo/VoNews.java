package cn.yah.vo;
import java.util.Date;

import cn.yah.po.News;


public class VoNews extends News {

    private String voPublish;

    public VoNews(News news) {
        this.setNid(news.getNid());
        this.setName(news.getName());
        this.setContent(news.getContent());
        this.setPublishtime(news.getPublishtime());
    }

    public VoNews() {}

    public String getVoPublish() {
        return voPublish;
    }

    public void setVoPublish(String voPublish) {
        this.voPublish = voPublish;
    }
}
