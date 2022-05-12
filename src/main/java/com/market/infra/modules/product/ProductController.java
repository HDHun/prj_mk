package com.market.infra.modules.product;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.market.infra.common.constants.Constants;
import com.market.infra.common.util.UtilDateTime;




@Controller
public class ProductController {

	@Autowired
	ProductServiceImpl service;
	

	
	
	
	 @RequestMapping(value = "/product/productRegist")
	  public String productRegist(Product dto) throws Exception {
		  

			  
			  MultipartFile multipartFile = dto.getFile();
			  
			  System.out.println("dto.getFile():" + dto.getFile());
			  
			  String fileName = multipartFile.getOriginalFilename(); String ext =
			  fileName.substring(fileName.lastIndexOf(".")+1); String uuid =
			  UUID.randomUUID().toString(); String uuidFileName= uuid + "." +ext;
			  
			  
			  multipartFile.transferTo(new
			  File("C:/factory/ws_sts_4130/prj_mk/src/main/webapp/resources/uploaded/" +
			  uuidFileName));
			  
			  
			  dto.setIfatOriginalFileName(fileName); 
			  dto.setIfatUuidFileName(uuidFileName);
			  
			  service.insertItemInfo(dto);
			 
			  
			
		
		  return "redirect:/member/indexView";
	  }
	  
	  @RequestMapping(value = "/product/productView")
	  public String productView(@ModelAttribute("vo") ProductVo vo, Model model) throws Exception {
			/*
			 * System.out.println("vo.getIfmmSeq(): " + vo.getIfmmSeq()); // 디비까지 가서 한 건의
			 * 데이터를 가져온다. Member item = service.selectOne(vo); // jsp로 데이터를 넘겨준다
			 * model.addAttribute("item", item);
			 */
		  
		  return "product/productView";
	  }
	  

	  
}