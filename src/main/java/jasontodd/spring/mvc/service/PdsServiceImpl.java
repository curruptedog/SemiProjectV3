package jasontodd.spring.mvc.service;

import jasontodd.spring.mvc.dao.PdsDAO;
import jasontodd.spring.mvc.utils.FileUpDownUtil;
import jasontodd.spring.mvc.vo.Pds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("prsrv")
public class PdsServiceImpl implements PdsService{

    private PdsDAO pdao;
    private FileUpDownUtil fud;

    @Autowired
    public PdsServiceImpl(PdsDAO pdao, FileUpDownUtil fud) {
        this.pdao = pdao;
        this.fud = fud;
    }

    @Override   // MultipartFile 로 구현하는 자료실
    public boolean newPds(Pds p, MultipartFile[] file) {
        // 파일 업로드시 사용할 uuid 생성
        String uuid = fud.makeUUID();

        // 업로드한 파일의 정보를 저장하기 위해 동적배열 생성
        List<String> files = new ArrayList<>();

        // 전송된 파일데이터를 하나씩 조사해서 파일정보를 알아낸 후, 배열에 저장
        for(MultipartFile f : file) {
            if (!f.getOriginalFilename().isEmpty())     // 오리지널 파일 이름이 비어있지 않으면. (존재한다면)
                files.add(fud.proUpload(f, uuid));      // file 내용을 file로 업로드
            // 파일 업로드시 앞서 만든 uuid값을 매개변수로 넘김
            // 업로드 한 결과값은 '파일명/파일크기/파일종류' 로 넘어옴
            // 이렇게 넘어온 파일정보는 동적배열에 저장
            else
                files.add("-/-/-");
            // 업로드한 파일이 없으면 -/-/- 를 배열에 저장
        }

        // 배열에 저장한 정보들을 하나씩 추출해서 Pds 에 각각 저장 (for 문으로 요약 가능)
        p.setFname1(files.get(0).split("[/]")[0]);  // 파일명
        p.setFsize1(files.get(0).split("[/]")[1]);  // 파일 크기
        p.setFtype1(files.get(0).split("[/]")[2]);  // 파일 종류

        p.setFname2(files.get(1).split("[/]")[0]);
        p.setFsize2(files.get(1).split("[/]")[1]);
        p.setFtype2(files.get(1).split("[/]")[2]);

        p.setFname3(files.get(2).split("[/]")[0]);
        p.setFsize3(files.get(2).split("[/]")[1]);
        p.setFtype3(files.get(2).split("[/]")[2]);

        // 생성한 uuid도 저장
        p.setUuid(uuid);

        boolean isInserted = false;     // 입력이 되었는지 확인용
        if (pdao.insertPds(p) > 0) isInserted = true;

        return isInserted;
    }

    @Override   // 페이지(범위)별로 나눠진 게시글 블럭 가져오기
    public List<Pds> readPds(String cp) {
        int snum = (Integer.parseInt(cp) - 1) * 10;
        return pdao.selectPds(snum);
    }

    @Override   // 전체 게시글 수 알아내기
    public int countPds() {

        return pdao.selectCountPds();
    }

    @Override
    public Pds readOnePds(String pno) {
        return pdao.selectOnePds(pno);
    }

    @Override   // order는 순서를 나타냄
    public Pds readOneFname(String pno, String order) {
        Map<String, String> param = new HashMap<>();
        param.put("order", "fname"+order);      // order 가 1이면 fname1을 가져옴
        param.put("pno", pno);
        return pdao.selectOneFname(param);
    }

    @Override
    public boolean downCountPds(String pno, String order) {
        boolean isUpdated = false;

        Map<String, String> param = new HashMap<>();
        param.put("order", "fdown"+order);
        param.put("pno", pno);

        if (pdao.downCountPds(param) > 0) isUpdated = true;

        return isUpdated;
    }

    @Override
    public void modifyRecmd(String pno) {
        pdao.updateRecmd(pno);
    }

    @Override
    public String readPrevpno(String pno) {
        return pdao.selectPrvpno(pno);
    }

    @Override
    public String readNextpno(String pno) {
        return pdao.selectNxtpno(pno);
    }

    @Override
    public Pds removePds(String pno) {
        Pds p = pdao.selectOnePds(pno);     // 삭제 하기 전 파일 정보를 알아냄
        pdao.deletePds(pno);                // 해당 게시글 삭제

        return p;
    }

}
