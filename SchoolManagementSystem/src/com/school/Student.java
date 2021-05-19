package com.school;

import java.sql.Blob;

public class Student {
	private String fnm;
	private String lnm;
	private String mnm; 
	private String bdt; 
	private String ggn;
	private String adNum; 
	private String grd;
	private String nst; 
	private String strt; 
	private String city; 
	private String stprov;
	private String p_code;
	private String emaill;
	private String con_1; 
	private String con_2;
	private String password;
	public Student(String fnm, String lnm, String mnm, String bdt, String ggn, String adNum, String grd, String nst,
			String strt, String city, String stprov, String p_code, String emaill, String con_1, String con_2, String password) {
		super();
		this.fnm = fnm;
		this.lnm = lnm;
		this.mnm = mnm;
		this.bdt = bdt;
		this.ggn = ggn;
		this.adNum = adNum;
		this.grd = grd;
		this.nst = nst;
		this.strt = strt;
		this.city = city;
		this.stprov = stprov;
		this.p_code = p_code;
		this.emaill = emaill;
		this.con_1 = con_1;
		this.con_2 = con_2;
		this.password = password;
	}
	public String getFnm() {
		return fnm;
	}
	public String getLnm() {
		return lnm;
	}
	public String getMnm() {
		return mnm;
	}
	public String getBdt() {
		return bdt;
	}
	public String getGgn() {
		return ggn;
	}
	public String getAdNum() {
		return adNum;
	}
	public String getGrd() {
		return grd;
	}
	public String getNst() {
		return nst;
	}
	public String getStrt() {
		return strt;
	}
	public String getCity() {
		return city;
	}
	public String getStprov() {
		return stprov;
	}
	public String getP_code() {
		return p_code;
	}
	public String getEmaill() {
		return emaill;
	}
	public String getCon_1() {
		return con_1;
	}
	public String getCon_2() {
		return con_2;
	}
	public String getPassword() {
		return password;
	}
}
