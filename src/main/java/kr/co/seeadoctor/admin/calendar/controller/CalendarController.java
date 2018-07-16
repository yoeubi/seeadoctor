package kr.co.seeadoctor.admin.calendar.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.seeadoctor.admin.calendar.service.CalendarService;
import kr.co.seeadoctor.repository.vo.CalendarInfo;
import kr.co.seeadoctor.repository.vo.Reservation;
import kr.co.seeadoctor.repository.vo.ReservationTime;
import kr.co.seeadoctor.repository.vo.User;

@Controller
@RequestMapping("/admin/calendar")
public class CalendarController {
	
	@Autowired
	private CalendarService service;
    
    
	@RequestMapping("/calendar.do")
	public void setCalendar(CalendarInfo calParam, Model model) {
		
		CalendarInfo calInfo = service.setCalendarDate(calParam);
		model.addAttribute("calInfo", calInfo);
		
	}
	
	
	@RequestMapping("/calendarPop.do")
	public void calendarPop(HttpSession session, String year, String month, String day, Model model) throws ParseException {
		User user = (User) session.getAttribute("user");
		
		Reservation reservation = new Reservation();
		reservation.setHospitalSeq(user.getHospitalSeq());

		if(month.length()==1) month = "0"+month;
		if(day.length()==1) day = "0"+day;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Date date = sdf.parse(year + month + day);
		reservation.setReserveDate(date);
		
		List<Reservation> reserveList = service.selectReservationPop(reservation);
		model.addAttribute("reserveList",reserveList);
		model.addAttribute("dateStr", year+"-"+month+"-"+day);
		
	}
	
	@RequestMapping("/timeManagement.do")
	public void timePop(HttpSession session, String dateStr, Model model) throws ParseException {
		User user = (User) session.getAttribute("user");
		
		Reservation reservation = new Reservation();
		reservation.setHospitalSeq(user.getHospitalSeq());
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = sdf.parse(dateStr);
		reservation.setReserveDate(date);
		
		model.addAttribute("reservation", reservation);
		model.addAttribute("dateStr", dateStr);
		
		//병원seq로 얻은 의사정보를 add해준다.
		
	}
	
	@RequestMapping("/timeList.json")
	@ResponseBody
	public List<ReservationTime> timeList(ReservationTime reserveTime , String dateStr) throws ParseException {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = sdf.parse(dateStr);
		reserveTime.setDate(date);
		
		return service.selectTimeList(reserveTime);
		
	}
	
/*
	@RequestMapping("/closeTime.json")
	@ResponseBody
	public void closeTime(ArrayList<String> closeArr, int docCode, String dateStr) throws ParseException {
		
		int hospCode = 1;
		
		System.out.println(docCode);
		System.out.println(dateStr);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = sdf.parse(dateStr);
		
		for(int i=0; i<closeArr.size(); i++) {
			System.out.println(closeArr.get(i));
		}
		
		ReserveService.updateCloseTime();
		
		
	}
*/
	
	@RequestMapping("/updateReserveStatus.json")
	public void updateReserveStatus(int reserveSeq) {
		service.updateReserveStatus(reserveSeq);
	}

}
