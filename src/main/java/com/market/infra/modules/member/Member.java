package com.market.infra.modules.member;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Member {
	//member
	private String ifmmSeq;
	private String ifmmName;
	private String ifmmId;
	private Integer ifmmDelNy;
	private Integer ifmmAdminNy;
	private String ifmmPassword;
	private String ifmmPassword2;
	
	private String ifmmGenderCd;
	
	private String ifmmDob;
	private String ifmmUseConsentNy;
	private String ifmmPersonalMustConsentNy;
	private String ifmmPersonalConsentNy;
	private String ifmmDiscountConsentNy;
	
	private String regIp;
	private String regSeq;
	private String regDevice;
	private Date regDateTime;
	private Date regDateTimesvr;

	
	
	private String modIp;
	private String modSeq;
	private String modDevice;
	private Date modDateTime;
	private Date modDateTimesvr;
	//address
	private String ifmaSeq;
	private String ifmaDefaultNy;
	private String ifmaTypeCd;
	private String ifmaTitle;
	private String ifmaAddress1;
	private String ifmaAddress2;
	private String ifmaAddress3;
	/*
	 * private double ifmaLat; private double ifmaLng;
	 */
	
	

	private String ifmaZipcode;
	private String ifmaDelNy;
	
	//email
	private String ifmeSeq;
	private String ifmeDefaultNy;
	private String ifmeTypeCd;
	private String ifmeEmailFull;
	private String ifmeEmailAccount;
	private String ifmeEmailDomain;
	private String ifmeEmailDomainCd;
	private String ifmeEmailDelNy;
	
	//phone
	
	private String ifmpDefaulyNy;
	private String ifmpTypeCd;
	private String ifmpDeviceCd;
	private String ifmpTelecomCd;
	private String ifmpNumber;
	private String ifmpDelNy;
	private String ifmpSeq;
	
	//code
	private String ifcdSeq;
	private String ifcdName;
	private String ifcdUseNy;
	private String ifcdDelNy;
	
	//upload
	public MultipartFile file;
	public MultipartFile file0;
	public MultipartFile file1;
	
	
	
	
	//image
	private String ifatSeq;
	private String ifatUuidFileName;
	private String ifatOriginalFileName;
	
	
	
	
	// getset
	public String getIfmmGenderCd() {
		return ifmmGenderCd;
	}
	public void setIfmmGenderCd(String ifmmGenderCd) {
		this.ifmmGenderCd = ifmmGenderCd;
	}
	public String getIfmaAddress3() {
		return ifmaAddress3;
	}
	public void setIfmaAddress3(String ifmaAddress3) {
		this.ifmaAddress3 = ifmaAddress3;
	}
	public String getIfatUuidFileName() {
		return ifatUuidFileName;
	}
	public void setIfatUuidFileName(String ifatUuidFileName) {
		this.ifatUuidFileName = ifatUuidFileName;
	}
	public String getIfatOriginalFileName() {
		return ifatOriginalFileName;
	}
	public void setIfatOriginalFileName(String ifatOriginalFileName) {
		this.ifatOriginalFileName = ifatOriginalFileName;
	}
	public String getIfatSeq() {
		return ifatSeq;
	}
	public void setIfatSeq(String ifatSeq) {
		this.ifatSeq = ifatSeq;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public MultipartFile getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
	}

	public MultipartFile getFile0() {
		return file0;
	}
	public void setFile0(MultipartFile file0) {
		this.file0 = file0;
	}
	public String getIfmmDob() {
		return ifmmDob;
	}
	public void setIfmmDob(String ifmmDob) {
		this.ifmmDob = ifmmDob;
	}
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public String getIfmmId() {
		return ifmmId;
	}
	public void setIfmmId(String ifmmId) {
		this.ifmmId = ifmmId;
	}
	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	public Integer getIfmmAdminNy() {
		return ifmmAdminNy;
	}
	public void setIfmmAdminNy(Integer ifmmAdminNy) {
		this.ifmmAdminNy = ifmmAdminNy;
	}
	public String getIfmmPassword() {
		return ifmmPassword;
	}
	public void setIfmmPassword(String ifmmPassword) {
		this.ifmmPassword = ifmmPassword;
	}

	public String getIfmaSeq() {
		return ifmaSeq;
	}
	public void setIfmaSeq(String ifmaSeq) {
		this.ifmaSeq = ifmaSeq;
	}
	public String getIfmaDefaultNy() {
		return ifmaDefaultNy;
	}
	public void setIfmaDefaultNy(String ifmaDefaultNy) {
		this.ifmaDefaultNy = ifmaDefaultNy;
	}
	public String getIfmaTypeCd() {
		return ifmaTypeCd;
	}
	public void setIfmaTypeCd(String ifmaTypeCd) {
		this.ifmaTypeCd = ifmaTypeCd;
	}
	public String getIfmaTitle() {
		return ifmaTitle;
	}
	public void setIfmaTitle(String ifmaTitle) {
		this.ifmaTitle = ifmaTitle;
	}
	public String getIfmaAddress1() {
		return ifmaAddress1;
	}
	public void setIfmaAddress1(String ifmaAddress1) {
		this.ifmaAddress1 = ifmaAddress1;
	}
	public String getIfmaZipcode() {
		return ifmaZipcode;
	}
	public void setIfmaZipcode(String ifmaZipcode) {
		this.ifmaZipcode = ifmaZipcode;
	}
	public String getIfmaDelNy() {
		return ifmaDelNy;
	}
	public void setIfmaDelNy(String ifmaDelNy) {
		this.ifmaDelNy = ifmaDelNy;
	}
	public String getIfmeSeq() {
		return ifmeSeq;
	}
	public void setIfmeSeq(String ifmeSeq) {
		this.ifmeSeq = ifmeSeq;
	}
	public String getIfmeDefaultNy() {
		return ifmeDefaultNy;
	}
	public void setIfmeDefaultNy(String ifmeDefaultNy) {
		this.ifmeDefaultNy = ifmeDefaultNy;
	}
	public String getIfmeTypeCd() {
		return ifmeTypeCd;
	}
	public void setIfmeTypeCd(String ifmeTypeCd) {
		this.ifmeTypeCd = ifmeTypeCd;
	}
	public String getIfmeEmailFull() {
		return ifmeEmailFull;
	}
	public void setIfmeEmailFull(String ifmeEmailFull) {
		this.ifmeEmailFull = ifmeEmailFull;
	}
	public String getIfmeEmailAccount() {
		return ifmeEmailAccount;
	}
	public void setIfmeEmailAccount(String ifmeEmailAccount) {
		this.ifmeEmailAccount = ifmeEmailAccount;
	}
	public String getIfmeEmailDomain() {
		return ifmeEmailDomain;
	}
	public void setIfmeEmailDomain(String ifmeEmailDomain) {
		this.ifmeEmailDomain = ifmeEmailDomain;
	}
	public String getIfmeEmailDomainCd() {
		return ifmeEmailDomainCd;
	}
	public void setIfmeEmailDomainCd(String ifmeEmailDomainCd) {
		this.ifmeEmailDomainCd = ifmeEmailDomainCd;
	}
	public String getIfmeEmailDelNy() {
		return ifmeEmailDelNy;
	}
	public void setIfmeEmailDelNy(String ifmeEmailDelNy) {
		this.ifmeEmailDelNy = ifmeEmailDelNy;
	}
	public String getIfmpSeq() {
		return ifmpSeq;
	}
	public void setIfmpSeq(String ifmpSeq) {
		this.ifmpSeq = ifmpSeq;
	}
	public String getIfmpDefaulyNy() {
		return ifmpDefaulyNy;
	}
	public void setIfmpDefaulyNy(String ifmpDefaulyNy) {
		this.ifmpDefaulyNy = ifmpDefaulyNy;
	}
	public String getIfmpTypeCd() {
		return ifmpTypeCd;
	}
	public void setIfmpTypeCd(String ifmpTypeCd) {
		this.ifmpTypeCd = ifmpTypeCd;
	}
	public String getIfmpDeviceCd() {
		return ifmpDeviceCd;
	}
	public void setIfmpDeviceCd(String ifmpDeviceCd) {
		this.ifmpDeviceCd = ifmpDeviceCd;
	}
	public String getIfmpTelecomCd() {
		return ifmpTelecomCd;
	}
	public void setIfmpTelecomCd(String ifmpTelecomCd) {
		this.ifmpTelecomCd = ifmpTelecomCd;
	}
	public String getIfmpNumber() {
		return ifmpNumber;
	}
	public void setIfmpNumber(String ifmpNumber) {
		this.ifmpNumber = ifmpNumber;
	}
	public String getIfmpDelNy() {
		return ifmpDelNy;
	}
	public void setIfmpDelNy(String ifmpDelNy) {
		this.ifmpDelNy = ifmpDelNy;
	}
	public String getIfcdSeq() {
		return ifcdSeq;
	}
	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}
	public String getIfcdName() {
		return ifcdName;
	}
	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}
	public String getIfcdUseNy() {
		return ifcdUseNy;
	}
	public void setIfcdUseNy(String ifcdUseNy) {
		this.ifcdUseNy = ifcdUseNy;
	}
	public String getIfcdDelNy() {
		return ifcdDelNy;
	}
	public void setIfcdDelNy(String ifcdDelNy) {
		this.ifcdDelNy = ifcdDelNy;
	}
	
	public String getRegIp() {
		return regIp;
	}
	public void setRegIp(String regIp) {
		this.regIp = regIp;
	}
	public String getRegSeq() {
		return regSeq;
	}
	public void setRegSeq(String regSeq) {
		this.regSeq = regSeq;
	}
	public String getRegDevice() {
		return regDevice;
	}
	public void setRegDevice(String regDevice) {
		this.regDevice = regDevice;
	}
	public Date getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}
	public Date getRegDateTimesvr() {
		return regDateTimesvr;
	}
	public void setRegDateTimesvr(Date regDateTimesvr) {
		this.regDateTimesvr = regDateTimesvr;
	}
	public String getModIp() {
		return modIp;
	}
	public void setModIp(String modIp) {
		this.modIp = modIp;
	}
	public String getModSeq() {
		return modSeq;
	}
	public void setModSeq(String modSeq) {
		this.modSeq = modSeq;
	}
	public String getModDevice() {
		return modDevice;
	}
	public void setModDevice(String modDevice) {
		this.modDevice = modDevice;
	}
	public Date getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(Date modDateTime) {
		this.modDateTime = modDateTime;
	}
	public Date getModDateTimesvr() {
		return modDateTimesvr;
	}
	public void setModDateTimesvr(Date modDateTimesvr) {
		this.modDateTimesvr = modDateTimesvr;
	
	
	}
	public String getIfmmPassword2() {
		return ifmmPassword2;
	}
	public void setIfmmPassword2(String ifmmPassword2) {
		this.ifmmPassword2 = ifmmPassword2;
	}
	
	public String getIfmaAddress2() {
		return ifmaAddress2;
	}
	public void setIfmaAddress2(String ifmaAddress2) {
		this.ifmaAddress2 = ifmaAddress2;
	}
	/*
	 * public double getIfmaLat() { return ifmaLat; } public void setIfmaLat(double
	 * ifmaLat) { this.ifmaLat = ifmaLat; } public double getIfmaLng() { return
	 * ifmaLng; } public void setIfmaLng(double ifmaLng) { this.ifmaLng = ifmaLng; }
	 */
	public String getIfmmUseConsentNy() {
		return ifmmUseConsentNy;
	}
	public void setIfmmUseConsentNy(String ifmmUseConsentNy) {
		this.ifmmUseConsentNy = ifmmUseConsentNy;
	}
	public String getIfmmPersonalMustConsentNy() {
		return ifmmPersonalMustConsentNy;
	}
	public void setIfmmPersonalMustConsentNy(String ifmmPersonalMustConsentNy) {
		this.ifmmPersonalMustConsentNy = ifmmPersonalMustConsentNy;
	}
	public String getIfmmPersonalConsentNy() {
		return ifmmPersonalConsentNy;
	}
	public void setIfmmPersonalConsentNy(String ifmmPersonalConsentNy) {
		this.ifmmPersonalConsentNy = ifmmPersonalConsentNy;
	}
	public String getIfmmDiscountConsentNy() {
		return ifmmDiscountConsentNy;
	}
	public void setIfmmDiscountConsentNy(String ifmmDiscountConsentNy) {
		this.ifmmDiscountConsentNy = ifmmDiscountConsentNy;
	}
	public String getIfmmAgeConsentNy() {
		return ifmmAgeConsentNy;
	}
	public void setIfmmAgeConsentNy(String ifmmAgeConsentNy) {
		this.ifmmAgeConsentNy = ifmmAgeConsentNy;
	}
	private String ifmmAgeConsentNy;
	
	






}
	
