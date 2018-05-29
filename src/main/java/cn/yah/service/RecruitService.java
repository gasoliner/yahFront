package cn.yah.service;

import cn.yah.po.Page;
import cn.yah.po.Recruit;
import cn.yah.vo.VoRecruit;

import java.util.List;


public interface RecruitService {
    List<Recruit> list(Page page);

    int insert(Recruit record);

    int delete(Integer id);

    int update(Recruit record);

    long count();

    Recruit selectByPrimaryKey(Integer id);

    List<VoRecruit> vo(List<Recruit> list);
}
