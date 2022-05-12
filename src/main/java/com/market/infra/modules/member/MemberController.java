package com.market.infra.modules.member;

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
import com.market.infra.modules.code.Code;



@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	

	
	
	

	  @RequestMapping(value = "/member/signUp") 
	  public String signUp(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		  
		  
		
		  
		
		/*
		 * model.addAttribute("codeGender", CodeServiceImpl.selectListCachedCode("16"));
		 */  
		return "member/signUp"; 
		
		  
	  }
	  @RequestMapping(value = "/member/UserInst") 
	  public String UserInst(Member dto) throws Exception {
		  
		 
			
		  	service.insert(dto);

			 
		  
		 
		  
		 
		  return "redirect:/member/indexView"; 
		  
		  
	  }
	
	  
	  
	  @RequestMapping(value = "/member/findId") public String findId(MemberVo vo, Model model) throws Exception {
	  
			/*
			 * Member item = service.selectOne(vo);
			 * 
			 * model.addAttribute("item", item);
			 */
	  
	  return "member/findId"; }
	 
	
	 
	 
	  @RequestMapping(value = "/member/memberUpdt") 
	  public String memberUpdt(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		  
		  service.update(dto); 
		  service.updateAddress(dto); 
		  service.updateEmail(dto);
		  service.updatePhone(dto);
		 
		  System.out.println("vo.ifmmSeq :" + vo.getIfmmSeq());
			/*
			 * return "redirect:/member/memberView?ifmmSeq=" +dto.getIfmmSeq();
			 */
		  
		  
		  redirectAttributes.addFlashAttribute("vo", vo);
		  return "redirect:/member/memberView"; 
		  
	  }
	  @RequestMapping(value = "/member/MemberMultiUele") public String
	  memberMultiUele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {

		  String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		  
		  for(String checkboxSeq : checkboxSeqArray) {
			  vo.setIfmmSeq(checkboxSeq);
			  service.Uelete(vo);
		  }
		  
		  
		  
		  
		  return "redirect:/member/MemberList";
	  }
	  
	 
	  
	  @RequestMapping(value = "/member/MemberDele") public String
				memberDele(MemberVo vo , RedirectAttributes redirectAttributes ) throws Exception {
		  service.delete(vo);
			
			  redirectAttributes.addAttribute("thisPage", vo.getThisPage());
			  redirectAttributes.addAttribute("shOption", vo.getShOption());
			  redirectAttributes.addAttribute("shValue", vo.getShValue());
			 
			
		  return "redirect:/member/MemberList";
		  }
	  @RequestMapping(value = "/member/MemberNele") public String memberNele(MemberVo vo , RedirectAttributes redirectAttributes ) throws Exception {
		  service.updateDelete(vo);
			
			  redirectAttributes.addAttribute("ifmmSeq", vo.getIfmmSeq());
			 
		  
		  return "redirect:/member/MemberList";
	  }
	  
	  
	  
	  @RequestMapping(value = "/member/logIn") 
	  public String logIn(HttpServletRequest httpServletRequest) throws Exception{
		 
		  return "member/logIn"; 
		  
		  
	  }
	  	@ResponseBody
		@RequestMapping(value = "/member/loginProc")
		public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			Member rtMember = service.selectOneLogin(dto);

			if(rtMember != null) {

				if(rtMember.getIfmmSeq() != null) {
					httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
					httpSession.setAttribute("sessId", rtMember.getIfmmId());
					httpSession.setAttribute("sessName", rtMember.getIfmmName());
					
					returnMap.put("rt", "success");
				} else {
					returnMap.put("rt", "fail");
				}
			} else {
				returnMap.put("rt", "fail");
			}
			return returnMap;
		}
	  	
	  	@ResponseBody //구글 로그인
		@RequestMapping(value = "/member/loginProcGoogle")
		public Map<String, Object> GloginProc(@RequestParam("ifmmName")String name,Member dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			System.out.println(name);
			httpSession.setAttribute("sessName",name);
			httpSession.setAttribute("sessId","구글 회원입니다");
			httpSession.setAttribute("sessSeq","구글 회원입니다");
		
			returnMap.put("rt", "success");
			
			return returnMap;
		}



	  	
	  	
	  	@ResponseBody
	  	@RequestMapping(value = "/member/logoutProc")
	  	public Map<String, Object> logoutProc(Member dto, HttpSession httpSession) throws Exception {
	  		Map<String, Object> returnMap = new HashMap<String, Object>();
	  		httpSession.invalidate();
	  		returnMap.put("rt","success");
	  		
	  		return returnMap;
	  	}

	  	
	  	@RequestMapping(value = "/member/indexView")
		public String indexView() {
			
			return "/member/indexView";
		}
		
		
		@RequestMapping(value = "/order/basket")
		public String basket() {
			
			return "/order/basket";
		}
		@RequestMapping(value = "/order/orderPage")
		public String orderPage() {
			
			return "/order/orderPage";
		}
		
		
	  
}