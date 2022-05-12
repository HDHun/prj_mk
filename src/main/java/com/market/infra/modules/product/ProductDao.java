package com.market.infra.modules.product;



import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import com.market.infra.modules.product.Product;
import com.market.infra.modules.product.ProductVo;

@Repository
public class ProductDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.market.infra.modules.product.ProductMpp";

	

	
		
	public int insertItemInfo(Product dto) {return sqlSession.insert(namespace + ".insertItemInfo", dto);}
	
	
}