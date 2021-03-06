package kr.co.seeadoctor.repository.vo;

import java.util.Date;

public class Reservation {


	    // 예약시퀀스 
	    private Integer reserveSeq;

	    // 유저시퀀스 
	    private Integer userSeq;

	    // 병원코드 
	    private Integer hospitalSeq;

	    // 의사코드 
	    private Integer doctorSeq;

	    // 날짜 
	    private Date regDate;
	    // 날짜 
	    private Date reserveDate;

	    // 시간 
	    private String reserveTime;

	    // 증상 
	    private String symptom;

	    // 방문상태 
	    private String reserveStatus;

	    // 리뷰작성 
	    private String reviewStatus;
	    // 리뷰글번호 
	    private int reviewNo;
	    
	    private User user;
	    private Doctor doctor;
	    private Hospital hospital;
	    
	    

	  

	

		public int getReviewNo() {
			return reviewNo;
		}

		public void setReviewNo(int reviewNo) {
			this.reviewNo = reviewNo;
		}

		public Date getRegDate() {
			return regDate;
		}

		public void setRegDate(Date regDate) {
			this.regDate = regDate;
		}

		public Hospital getHospital() {
			return hospital;
		}

		public void setHospital(Hospital hospital) {
			this.hospital = hospital;
		}

		public Doctor getDoctor() {
			return doctor;
		}

		public void setDoctor(Doctor doctor) {
			this.doctor = doctor;
		}

		public Integer getDoctorSeq() {
			return doctorSeq;
		}

		public void setDoctorSeq(Integer doctorSeq) {
			this.doctorSeq = doctorSeq;
		}


		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		public Integer getReserveSeq() {
	        return reserveSeq;
	    }

	    public void setReserveSeq(Integer reserveSeq) {
	        this.reserveSeq = reserveSeq;
	    }

	    public Integer getUserSeq() {
	        return userSeq;
	    }

	    public void setUserSeq(Integer userSeq) {
	        this.userSeq = userSeq;
	    }

	    public Integer getHospitalSeq() {
	        return hospitalSeq;
	    }

	    public void setHospitalSeq(Integer hospitalSeq) {
	        this.hospitalSeq = hospitalSeq;
	    }


	    public Date getReserveDate() {
	        return reserveDate;
	    }

	    public void setReserveDate(Date reserveDate) {
	        this.reserveDate = reserveDate;
	    }

	    public String getReserveTime() {
	        return reserveTime;
	    }

	    public void setReserveTime(String reserveTime) {
	        this.reserveTime = reserveTime;
	    }

	    public String getSymptom() {
	        return symptom;
	    }

	    public void setSymptom(String symptom) {
	        this.symptom = symptom;
	    }

	    public String getReserveStatus() {
	        return reserveStatus;
	    }

	    public void setReserveStatus(String reserveStatus) {
	        this.reserveStatus = reserveStatus;
	    }

	    public String getReviewStatus() {
	        return reviewStatus;
	    }

	    public void setReviewStatus(String reviewStatus) {
	        this.reviewStatus = reviewStatus;
	    }

	}

