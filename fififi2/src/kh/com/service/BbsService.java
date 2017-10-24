package kh.com.service;

import java.util.List;

import kh.com.model.Post;

public interface BbsService {
	
	/*					CREATE					*/
	boolean insertBbs(Post dto);
	
	/*					READ					*/
	Post getBbs(int seq);
	List<Post> getBbsList(Post query);
	int getTotalBbs(int boardSeq);
	
	/*					UPDATE					*/
	boolean updateBbs(Post bbs);

	/*					DELETE					*/
	boolean deleteBbs(int seq);

}
