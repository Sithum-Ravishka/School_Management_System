package com.school;

public class studentresult {
	
	private int id;
	private String studentName;
	private String admissionNo;
	private String year;
	private String classRoom;
	private String semester;
	private String sinhalaMarks;
	private String buddhismMarks;
	private String mathsMarks;
	private String scinceMarks;
	private String englishMarks;
	private String historyMarks;
	private String citizenEducationMarks;
	private String tamilMarks;
	private String geographyMarks;
	private String healthandPhysicalEducationMarks;
	private String homeEconomicsMarks;
	private String aestheticSubjects;
	private String aestheticsubjectMarks;
	private int totalMark;
	private double average;
	public studentresult(int id, String studentName, String admissionNo, String year, String classRoom, String semester,
			String sinhalaMarks, String buddhismMarks, String mathsMarks, String scinceMarks, String englishMarks,
			String historyMarks, String citizenEducationMarks, String tamilMarks, String geographyMarks,
			String healthandPhysicalEducationMarks, String homeEconomicsMarks, String aestheticSubjects,
			String aestheticsubjectMarks, int totalMark, double average) {
		this.id = id;
		this.studentName = studentName;
		this.admissionNo = admissionNo;
		this.year = year;
		this.classRoom = classRoom;
		this.semester = semester;
		this.sinhalaMarks = sinhalaMarks;
		this.buddhismMarks = buddhismMarks;
		this.mathsMarks = mathsMarks;
		this.scinceMarks = scinceMarks;
		this.englishMarks = englishMarks;
		this.historyMarks = historyMarks;
		this.citizenEducationMarks = citizenEducationMarks;
		this.tamilMarks = tamilMarks;
		this.geographyMarks = geographyMarks;
		this.healthandPhysicalEducationMarks = healthandPhysicalEducationMarks;
		this.homeEconomicsMarks = homeEconomicsMarks;
		this.aestheticSubjects = aestheticSubjects;
		this.aestheticsubjectMarks = aestheticsubjectMarks;
		this.totalMark = totalMark;
		this.average = average;
	}
	public int getId() {
		return id;
	}
	public String getStudentName() {
		return studentName;
	}
	public String getAdmissionNo() {
		return admissionNo;
	}
	public String getYear() {
		return year;
	}
	public String getClassRoom() {
		return classRoom;
	}
	public String getSemester() {
		return semester;
	}
	public String getSinhalaMarks() {
		return sinhalaMarks;
	}
	public String getBuddhismMarks() {
		return buddhismMarks;
	}
	public String getMathsMarks() {
		return mathsMarks;
	}
	public String getScinceMarks() {
		return scinceMarks;
	}
	public String getEnglishMarks() {
		return englishMarks;
	}
	public String getHistoryMarks() {
		return historyMarks;
	}
	public String getCitizenEducationMarks() {
		return citizenEducationMarks;
	}
	public String getTamilMarks() {
		return tamilMarks;
	}
	public String getGeographyMarks() {
		return geographyMarks;
	}
	public String getHealthandPhysicalEducationMarks() {
		return healthandPhysicalEducationMarks;
	}
	public String getHomeEconomicsMarks() {
		return homeEconomicsMarks;
	}
	public String getAestheticSubjects() {
		return aestheticSubjects;
	}
	public String getAestheticsubjectMarks() {
		return aestheticsubjectMarks;
	}
	public int getTotalMark() {
		return totalMark;
	}
	public double getAverage() {
		return average;
	}

	
}