package com.school;

public class Teacher {
		private String fname;
		private String mname;
		private String lname;
		private String bdate;
		private String gen;
		private String tId;
		private String noStreet;
		private String street2;
		private String city;
		private String streetPro;
		private String pcode;
		private String email;
		private String con1;
		private String con2;
		private String photo;
		private String password;
		private String prosican;
		
		public Teacher(String fname, String mname, String lname, String bdate, String gen, String tId, String noStreet,
				String street2, String city, String streetPro, String pcode, String email, String con1, String con2,
				String photo, String password, String prosican) 
		{
			super();
			this.fname = fname;
			this.mname = mname;
			this.lname = lname;
			this.bdate = bdate;
			this.gen = gen;
			this.tId = tId;
			this.noStreet = noStreet;
			this.street2 = street2;
			this.city = city;
			this.streetPro = streetPro;
			this.pcode = pcode;
			this.email = email;
			this.con1 = con1;
			this.con2 = con2;
			this.photo = photo;
			this.password = password;
			this.prosican = prosican;
		}
		
		public String getFname() {
			return fname;
		}
		public String getMname() {
			return mname;
		}
		public String getLname() {
			return lname;
		}
		public String getBdate() {
			return bdate;
		}
		public String getGen() {
			return gen;
		}
		public String gettId() {
			return tId;
		}
		public String getNoStreet() {
			return noStreet;
		}
		public String getStreet2() {
			return street2;
		}
		public String getCity() {
			return city;
		}
		public String getStreetPro() {
			return streetPro;
		}
		public String getPcode() {
			return pcode;
		}
		public String getEmail() {
			return email;
		}
		public String getCon1() {
			return con1;
		}
		public String getCon2() {
			return con2;
		}
		public String getPhoto() {
			return photo;
		}
		public String getPassword() {
			return password;
		}
		public String getProsican() {
			return prosican;
		}
}
