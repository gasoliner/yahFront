package cn.yah.vo;

import cn.yah.po.Recruit;

/**
 * Created by Ww on 2018/5/16.
 */
public class VoRecruit extends Recruit {

    private String voEid;

    private String voCid;

    private String voPublish;

    public VoRecruit(Recruit recruit) {
        this.setRid(recruit.getRid());
        this.setName(recruit.getName());
        this.setEid(recruit.getEid());
        this.setLinkman(recruit.getLinkman());
        this.setPhone(recruit.getPhone());
        this.setSalary(recruit.getSalary());
        this.setPublishtime(recruit.getPublishtime());
        this.setAddr(recruit.getAddr());
        this.setNature(recruit.getNature());
        this.setExperience(recruit.getExperience());
        this.setCid(recruit.getCid());
        this.setEducation(recruit.getEducation());
        this.setCount(recruit.getCount());
        this.setInfo(recruit.getInfo());
    }

    public VoRecruit() {}

    public String getVoPublish() {
        return voPublish;
    }

    public void setVoPublish(String voPublish) {
        this.voPublish = voPublish;
    }

    public String getVoEid() {
        return voEid;
    }

    public void setVoEid(String voEid) {
        this.voEid = voEid;
    }

    public String getVoCid() {
        return voCid;
    }

    public void setVoCid(String voCid) {
        this.voCid = voCid;
    }
}
