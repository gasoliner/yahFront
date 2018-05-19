package cn.yah.service.impl;

import cn.yah.mapper.MemberMapper;
import cn.yah.po.Member;
import cn.yah.po.MemberExample;
import cn.yah.po.Page;
import cn.yah.service.MemberService;
import cn.yah.vo.VoMember;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service("memberService")
public class MemberServiceImpl implements MemberService {


    @Autowired
    MemberMapper memberMapper;


    long total = 0L;

    @Override
    public List<Member> list(Page page) {
        PageHelper.startPage(page.getPage(), page.getRows());
        List<Member> list = memberMapper.selectByExample(new MemberExample());
        PageInfo<Member> pageInfo = new PageInfo<>(list);
        this.total = pageInfo.getTotal();
        return list;
    }

    @Override
    public int insert(Member record) {
        memberMapper.insertSelective(record);
        return record.getMid();
    }

    @Override
    public int delete(Integer id) {
        return memberMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int update(Member record) {
        return memberMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public long count() {
        return total;
    }


    @Override
    public Member selectByPrimaryKey(Integer id) {
        return memberMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<VoMember> vo(List<Member> list) {
        List<VoMember> list1 = new ArrayList<>();
        for (Member member:
                list) {
            VoMember voMember = new VoMember(member);
            voMember.setVoResume("<a href = \"#\" onclick=\"showMemberResume('" + member.getMid() + "')\">查看简历</a>");
            list1.add(voMember);
        }
        return list1;
    }

}
