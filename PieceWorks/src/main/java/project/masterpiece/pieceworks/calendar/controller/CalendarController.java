package project.masterpiece.pieceworks.calendar.controller;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;

import project.masterpiece.pieceworks.calendar.model.service.CalendarService;
import project.masterpiece.pieceworks.calendar.model.vo.Calendar;
import project.masterpiece.pieceworks.member.model.vo.Member;

@Controller
public class CalendarController {
	
	@Autowired
	private CalendarService caService;

	@RequestMapping("fullCal.ca")
	public String fullCalView() {
		return "fullCalendar";
	}
	
	@RequestMapping("proCal.ca")
	public String proCalView() {
		return "calendar_p";
	}
	
	@RequestMapping(value="addEvent.ca", produces="application/json; charset=UTF-8")
	@ResponseBody
	public int addEvent(@RequestParam("eventData") String eventData, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		JSONParser parser = new JSONParser();
		JSONObject jObj = (JSONObject)parser.parse(eventData);
		String title = (String)jObj.get("title");
		String start = (String)jObj.get("start");
		String end = (String)jObj.get("end");
		String description = (String)jObj.get("description");
		String type = (String)jObj.get("type");
		String bgColor = (String)jObj.get("backgroundColor");
		Boolean allDayCheck = (Boolean)jObj.get("allDay");
		String allDay = "";
		
		Calendar c = new Calendar();
		c.setcCreator(loginUser.getEmail());
		c.setCalTitle(title);
		c.setcStartDate(start);
		c.setcEndDate(end);
		c.setCategory(type);
		c.setCalContent(description);
		c.setBgColor(bgColor);

		
		if(allDayCheck == true) {
			allDay = "Y";
		} else if(allDayCheck == null || allDayCheck == false){
			allDay = "N";
		}
		
		c.setAllDay(allDay);
		
//		System.out.println(c);
		
		return caService.addEvent(c);
	}
	
	@RequestMapping("eventList.ca")
	public void getEventList(@RequestParam("startDate") String startDate,
							   @RequestParam("endDate") String endDate,
							   Model model,
							   HttpServletResponse response) {
		
		Calendar c = new Calendar();
		
		c.setcStartDate(startDate);
		c.setcEndDate(endDate);
		
		ArrayList<Calendar> list = caService.getEventList(c);
		
		model.addAttribute("list", list);
//		System.out.println(list);
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new Gson();
		try {
			gson.toJson(list, response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping(value="editEvent.ca", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String editEvent(
			/* @RequestParam("updateData") String updateData, */@RequestBody Calendar c,
						 Model model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");

//		JSONParser parser = new JSONParser();
//		JSONObject jObj = (JSONObject)parser.parse(updateData);
//		int calendarNo = (int)jObj.get("calendarNo");
		
		int cNo = c.getCalendarNo();
		
		System.out.println(cNo);
		
		int result = caService.editEvent(cNo);
		
		model.addAttribute("Calendar", c);
		
		if(result > 0) {
			return "success";
		} else {
			return "fail";
		}
		
	}
	
}
