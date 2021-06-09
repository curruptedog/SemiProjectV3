package jasontodd.spring.mvc.service;

import jasontodd.spring.mvc.vo.Board;

import java.util.List;

public interface BoardService {

    boolean newBoard(Board b);
    boolean modifyBoard(Board b);
    boolean removeBoard(String bdno);

    List<Board> readBoard(String cp);
    List<Board> readBoard(String cp, String ftype, String fkdy);

    Board readOneBoard(String bdno);

    int countBoard();
    int countBoard(String ftype, String fkdy);

    boolean viewCountBoard(String bdno);

}
