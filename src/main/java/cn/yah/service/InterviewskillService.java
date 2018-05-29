package cn.yah.service;

import cn.yah.po.Interviewskill;
import cn.yah.po.Page;
import cn.yah.vo.VoInterviewskill;

import java.util.List;


public interface InterviewskillService {
    List<Interviewskill> list(Page page);

    int insert(Interviewskill record);

    int delete(Integer id);

    int update(Interviewskill record);

    long count();

    Interviewskill selectByPrimaryKey(Integer id);

    List<VoInterviewskill> vo(List<Interviewskill> list);

}
