package kr.or.ddit.user.model;

import java.util.Date;

import javax.validation.constraints.NotNull;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

import kr.or.ddit.encrypt.kisa.sha256.KISA_SHA256;

public class User{
	private static final Logger logger = LoggerFactory.getLogger(User.class);
	
	
	private String userId;
	private String userNm;
	private String alias;
	
	@JsonFormat(shape = Shape.STRING, pattern = "yyyy-MM-dd")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date reg_dt;
	
	private int age;
	
	@NotNull
	private String pass;		//사용자 비밀번호
	private String addr1;
	private String addr2;
	private String zipcode;

	private String filename;	 //파일명(사용자 업로드 파일명)
	private String realfilename; //물리 파일명
	private String realfilename2; //물리 파일명


	public User() {
		
	}

	public User(String userId) {
		this.userId = userId;
	}

	
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userNm=" + userNm + ", alias=" + alias + ", reg_dt=" + reg_dt + ", age="
				+ age + ", pass=" + pass + ", addr1=" + addr1 + ", addr2=" + addr2 + ", zipcode=" + zipcode
				+ ", filename=" + filename + ", realfilename=" + realfilename + ", realfilename2=" + realfilename2
				+ "]";
	}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public String getAlias() {
		return alias;
	}
	public void setAlias(String alias) {
		this.alias = alias;
	}
	public Date getReg_dt() {
		return reg_dt;
	}

	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getRealfilename() {
		return realfilename;
	}

	public void setRealfilename(String realfilename) {
		this.realfilename = realfilename;
	}

	public String getRealfilename2() {
		return realfilename2;
	}

	public void setRealfilename2(String realfilename2) {
		this.realfilename2 = realfilename2;
	}
	
	public boolean checkLoginValidate(String userId, String pass) {
		
		//암호화 문장끼리 비교
		if(userId.equals(this.userId) && KISA_SHA256.encrypt(pass).equals(this.pass)) 
			return true;
		
		return false;
	}

	
}
