package com.seedit.gitsample.common;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.seedit.gitsample.sample.dto.BoardDTO;

public class AbstractDAO {

@Autowired
private SqlSessionTemplate sqlSession;

public Object insert(String queryId, Object params) throws Exception{
	return sqlSession.insert(queryId, params);
}
public Object update(String queryId, Object params) throws Exception{
	return sqlSession.update(queryId, params);
}
public Object delete(String queryId, Object params) throws Exception{
	return sqlSession.delete(queryId, params);
}
public Object selectOne(String queryId) throws Exception{
	return sqlSession.selectOne(queryId);
}
public Object selectOne(String queryId, Object params) throws Exception{
	return sqlSession.selectOne(queryId, params);
}
@SuppressWarnings("rawtypes")
public List selectList(String queryId) throws Exception{
	return sqlSession.selectList(queryId);
}
@SuppressWarnings("rawtypes")
public List selectList(String queryId, Object params) throws Exception{
	return sqlSession.selectList(queryId, params);
}
}
