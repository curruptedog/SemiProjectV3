package jasontodd.spring.mvc.dao;

import jasontodd.spring.mvc.vo.Gallery;

import java.util.List;

public interface GalleryDAO {

    int insertGallery(Gallery g);
    List<Gallery> selectGallery(int snum);

    Gallery selectOneGallery(String gno);

    int updateGallery(Gallery g);

    String readFnames(String gno);

    String readFsizes(String gno);
}
