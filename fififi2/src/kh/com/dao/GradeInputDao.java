package kh.com.dao;

import java.util.List;

import kh.com.model.MemberDto;
import kh.com.model.SubjectDto;

public interface GradeInputDao {
	
	//교수별 과목 리스트 보여주기 
	public List<SubjectDto> gradeinputlist (MemberDto dto);
}
