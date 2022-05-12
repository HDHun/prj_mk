package com.market.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.market.infra.common.util.UtilDateTime;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductDao dao;

	
//member
	@Override
	public int insertItemInfo(Product dto) throws Exception {
		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());
		dao.insertItemInfo(dto);
		
		return 1;
	}


	
	

	
	}
