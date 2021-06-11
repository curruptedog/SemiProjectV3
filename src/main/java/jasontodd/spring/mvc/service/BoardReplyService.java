package jasontodd.spring.mvc.service;

import jasontodd.spring.mvc.vo.Reply;

import java.util.List;

public interface BoardReplyService {

    List<Reply> readReply(String bdno);

    boolean newComment(Reply r);
    boolean newReply(Reply r);

}
