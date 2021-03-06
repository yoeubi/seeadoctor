package kr.co.seeadoctor.repository.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

//예약시간 관리 테이블 
public class ReservationTime {

	    // 타임시퀀스 
	    private Integer timeSeq;

	    // 병원코드 
	    private Integer hospitalSeq;

	    // 의사코드 
	    private Integer doctorSeq;

	    // 날짜 
	    @DateTimeFormat(pattern = "yyyy-MM-dd")
		private Date date;

	    // 시간 
	    private String time;

	    // 예약상태 
	    private String bookedStatus;

	    // 막힘상태 
	    private String blockedStatus;

	    public Integer getTimeSeq() {
	        return timeSeq;
	    }

	    public void setTimeSeq(Integer timeSeq) {
	        this.timeSeq = timeSeq;
	    }

	    public Integer getHospitalSeq() {
	        return hospitalSeq;
	    }

	    public void setHospitalSeq(Integer hospitalSeq) {
	        this.hospitalSeq = hospitalSeq;
	    }

	    public Integer getdoctorSeq() {
	        return doctorSeq;
	    }

	    public void setdoctorSeq(Integer doctorSeq) {
	        this.doctorSeq = doctorSeq;
	    }

	    public Date getDate() {
	        return date;
	    }

	    public void setDate(Date date) {
	        this.date = date;
	    }

	    public String getTime() {
	        return time;
	    }

	    public void setTime(String time) {
	        this.time = time;
	    }

	    public String getBookedStatus() {
	        return bookedStatus;
	    }

	    public void setBookedStatus(String bookedStatus) {
	        this.bookedStatus = bookedStatus;
	    }

	    public String getBlockedStatus() {
	        return blockedStatus;
	    }

	    public void setBlockedStatus(String blockedStatus) {
	        this.blockedStatus = blockedStatus;
	    }
	
}
