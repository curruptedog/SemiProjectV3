package jasontodd.spring.mvc.service;

import jasontodd.spring.mvc.dao.BoardReplyDAO;
import jasontodd.spring.mvc.vo.Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("brsrv")
public class BoardReplyServiceImpl implements BoardReplyService {

    @Autowired private BoardReplyDAO brdao;

    @Override
    public List<Reply> readReply(String bdno) {
        return brdao.selectReply(bdno);
    }

    @Override   // 댓글
    public boolean newComment(Reply r) {
        boolean isInserted = false;
        if(brdao.insertComment(r) > 0) isInserted = true;
        
        return isInserted;
    }

    @Override   // 대댓글
    public boolean newReply(Reply r) {
        boolean isInserted = false;
        if(brdao.insertReply(r) > 0) isInserted = true;

        return isInserted;
    }
}
