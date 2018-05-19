package cn.yah.security;

import cn.yah.po.Member;
import cn.yah.service.MemberService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;


public class DefineRealm extends AuthorizingRealm {

    @Autowired
    MemberService memberService;

//    授权的验证
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

//    登录验证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.println("authenticationToken.getPrincipal()-" + authenticationToken.getPrincipal());
        String id = (String) authenticationToken.getPrincipal();
        Member member = memberService.selectByPrimaryKey(Integer.parseInt(id));
        if(member == null) {
            throw new UnknownAccountException();//没找到帐号
        }
        AuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
                member.getMid(),
                member.getPassword(),
                getName()
        );
        return authenticationInfo;
    }
}
