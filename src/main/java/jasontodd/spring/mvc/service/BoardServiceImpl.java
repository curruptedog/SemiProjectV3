package jasontodd.spring.mvc.service;

import jasontodd.spring.mvc.dao.BoardDAO;
import jasontodd.spring.mvc.vo.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("bsrv")
public class BoardServiceImpl implements BoardService{

    @Autowired private BoardDAO bdao;

    @Override
    public boolean newBoard(Board b) {
        boolean isInserted = false;
        if (bdao.insertBoard(b) > 0) isInserted = true;

        return isInserted;
    }

    @Override
    public boolean modifyBoard(Board b) {
        return false;
    }

    @Override
    public boolean removeBoard(String bdno) {
        return false;
    }

    @Override
    public List<Board> readBoard(String cp) {
        // (30 * (n-1))
        int snum = (Integer.parseInt(cp)-1) * 30;
        return bdao.selectBoard(snum);
    }

    @Override
    public List<Board> readBoard(String cp, String ftype, String fkey) {
        int snum = (Integer.parseInt(cp) - 1) * 30;

        Map<String, Object> params = new HashMap<>();       // vo 클래스 안넣고 map 사용해서 입력
        params.put("snum", snum);
        params.put("ftype", ftype);
        params.put("fkey", fkey);

        return bdao.findSelectBoard(params);
    }

    @Override
    public Board readOneBoard(String bdno) {
        return bdao.selectOneBoard(bdno);
    }

    @Override
    public int countBoard() {

        return bdao.selectCountBoard();
    }

    @Override
    public int countBoard(String ftype, String fkey) {
        Map<String, Object> params = new HashMap<>();
        params.put("ftype", ftype);
        params.put("fkey", fkey);

        return bdao.selectCountBoard();
    }

    @Override
    public boolean viewCountBoard(String bdno) {
        boolean isUpdate = false;
        if (bdao.viewCountBoard(bdno) > 0) isUpdate = true;
        return isUpdate;
    }
}
