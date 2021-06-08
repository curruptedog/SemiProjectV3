package jasontodd.spring.mvc.dao;

import jasontodd.spring.mvc.vo.Member;
import jasontodd.spring.mvc.vo.Zipcode;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface MemberDAO {

    // MemberService 인터페이스 참조
    // String newMember(Member m);
    // String findZipcode(String dong);
    // String checkUserid(String uid);
    // boolean checkLogin(Member m, HttpSession sess);

    int insertMember(Member m);
    List<Zipcode> selectZipcode(String dong);
    int selectOneUserid(String uid);
    int selectLogin(Member m);

}
