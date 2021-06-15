package jasontodd.spring.mvc.controller;

import jasontodd.spring.mvc.service.PdsService;
import jasontodd.spring.mvc.utils.FileUpDownUtil;
import jasontodd.spring.mvc.vo.Pds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Controller
public class PdsController {

    @Autowired private PdsService psrv;
    @Autowired private FileUpDownUtil fud;

    @GetMapping("/pds/list")
    public ModelAndView list(ModelAndView mv, String cp) {
        if (cp == null) cp = "1";
        mv.setViewName("pds/list.tiles");
        mv.addObject("pds", psrv.readPds(cp));
        mv.addObject("pcnt", psrv.countPds());

        return mv;
    }

    @GetMapping("/pds/view")       // 본문 글 출력
    public ModelAndView view(ModelAndView mv, String pno) {

        mv.setViewName("pds/view.tiles");
        mv.addObject("p", psrv.readOnePds(pno));

        return mv;
    }

    @GetMapping("/pds/write")
    public String write() {
        return "pds/write.tiles";
    }

    // commoms file upload로 구현한 자료실
    /* @PostMapping("/pds/write")
     public String writeok(Pds p, HttpServletRequest req) {  write.jsp로 받은걸 req로 받았음

        // commons file upload로 업로드 처리 및 폼데이터 가져오기
        FileUpDownUtil fud = new FileUpDownUtil();
        Map<String, String> frmdata = fud.proUpload(req);

        System.out.println(frmdata.get("title"));
        System.out.println(frmdata.get("contents"));
        System.out.println(frmdata.get("file1"));
        System.out.println(frmdata.get("filesize"));
        System.out.println(frmdata.get("filetype"));

        // pds 객체를 이용하는 경우, 폼 데이터가 자동으로 주입되지 않음.
        System.out.println(p.getTitle());
        System.out.println(p.getContents());

        return "redirect:/pds/list";
    }*/

    // MultiPartFile 로 구현한 자료실  일반 파일은 vo로, 파일 관련은 multi 로
    @PostMapping("/pds/write")
    public String writeok(Pds p, MultipartFile[] file) {

        psrv.newPds(p, file);
        return "redirect:/pds/list?cp=1";
    }

    // 다운로드 처리

    // 컨트롤러 메서드에 ResponseBody 어노테이션을 사용하면
    // view를 이용해서 데이터를 출력하지 않고
    // HTTP 응답으로 직접 데이터를 브라우져로 출력할 수 있음

    @ResponseBody
    @GetMapping("/pds/down")
    public void pdsdown(String pno, String order, HttpServletResponse res) {
        // 파일명 알아내기
        Pds p = psrv.readOneFname(pno, order);  // 다운로드할 파일 정보 알아냄
        fud.procDownload(p.getFname1(), p.getUuid(), res);      // 다운로드 처리
        psrv.downCountPds(pno, order);          // 다운로드한 파일 다운 수 증가

    }

    // 추천하기
    @GetMapping("/pds/recommd")
    public String recomd(String pno) {
        psrv.modifyRecmd(pno);

        return "redirect:/pds/view?pno=" + pno;
    }

    // 이전글 보여주기
    @GetMapping("/pds/prev")
    public String pdsprev(String pno) {
        String prvpno = psrv.readPrevpno(pno);

        return "redirect:/pds/view?pno=" + prvpno;
    }

    // 다음글 보여주기
    @GetMapping("/pds/next")
    public String pdsnext(String pno) {
        String nxtpno = psrv.readNextpno(pno);

        return "redirect:/pds/view?pno=" + nxtpno;
    }

    // 글 삭제
    @GetMapping("/pds/pdrmv")
    public String pdrmv(String pno) {
        String nxtpno = psrv.readNextpno(pno);

        // 테이블에서 게시글 삭제
        Pds p = psrv.removePds(pno);
        // 첨부파일들을 삭제
        fud.removeAttach(p);

        return "redirect:/pds/list";
    }
}
