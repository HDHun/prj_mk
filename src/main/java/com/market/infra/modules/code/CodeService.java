package com.market.infra.modules.code;

import java.util.List;

public interface CodeService {
	//codegroup
	List<Code> selectList(CodeVo vo) throws Exception;
	int insert(Code dto) throws Exception;
	int update(Code dto) throws Exception; 
	int delete(CodeVo vo) throws Exception; 
	int updateDelete(CodeVo vo) throws Exception; 
	Code selectOne(CodeVo vo) throws Exception;
	int selectOneCount(CodeVo vo) throws Exception;

	
	// code
	List<Code> selectListCode(CodeVo vo) throws Exception;
	int insertCode(Code dto) throws Exception;
	int updateCode(Code dto) throws Exception; 
	Code selectOneCode(CodeVo vo) throws Exception;
	int selectOneCodeCount(CodeVo vo) throws Exception;
}