package com.market.infra.modules;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {
	
	
	@RequestMapping(value = "/member/indexView")
	public String indexView() {
		
		return "/member/indexView";
	}
	@RequestMapping(value = "/member/logIn")
	public String logIn() {
		
		return "/member/logIn";
	}
	@RequestMapping(value = "/member/findId")
	public String findId() {
		
		return "/member/findId";
	}
	@RequestMapping(value = "/member/signUp")
	public String signUp() {
		
		return "/member/signUp";
	}
	@RequestMapping(value = "/order/basket")
	public String basket() {
		
		return "/order/basket";
	}
	@RequestMapping(value = "/order/orderPage")
	public String orderPage() {
		
		return "/order/orderPage";
	}
	@RequestMapping(value = "/product/productRegist")
	public String productRegist() {
		
		return "/product/productRegist";
	}
	@RequestMapping(value = "/product/productView")
	public String productView() {
		
		return "/product/productView";
	}
	
}
