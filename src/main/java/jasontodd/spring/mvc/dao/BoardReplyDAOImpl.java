package jasontodd.spring.mvc.dao;

import jasontodd.spring.mvc.vo.Reply;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("brdao")
public class BoardReplyDAOImpl implements BoardReplyDAO{

    @Autowired private SqlSession sqlSession;

    @Override
    public List<Reply> selectReply(String bdno) {
        return sqlSession.selectList("bdreply.selectReply", bdno);
    }

    @Override   // 댓글
    public int insertComment(Reply r) {
        r.setRpno(selectLastRno());
        // 댓글 저장시 최근 댓글 번호를 알아내서 rpno에 저장함
        return sqlSession.insert("bdreply.insertComment", r);
    }

    @Override   // 대댓글
    public int insertReply(Reply r) {
        // 부모 댓글 번호를 대댓글 쓸때 받아와서 ↑ 위 코드 한줄 덜 써도 됨
        return sqlSession.insert("bdreply.insertComment", r);
    }

    // 댓글 테이블에서 최근 댓글번호를 알아냄
    private String selectLastRno() {
        return sqlSession.selectOne("bdreply.selectLastRno" );
    }
}
