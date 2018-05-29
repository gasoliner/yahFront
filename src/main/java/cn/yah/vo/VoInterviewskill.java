package cn.yah.vo;

import cn.yah.po.Interviewskill;
import cn.yah.po.News;


public class VoInterviewskill extends Interviewskill {

    private String voPublish;

    public VoInterviewskill(Interviewskill interviewskill) {
        this.setIid(interviewskill.getIid());
        this.setName(interviewskill.getName());
        this.setContent(interviewskill.getContent());
        this.setPublishtime(interviewskill.getPublishtime());
    }

    public VoInterviewskill() {}

    public String getVoPublish() {
        return voPublish;
    }

    public void setVoPublish(String voPublish) {
        this.voPublish = voPublish;
    }
}
