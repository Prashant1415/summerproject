package com.Manage.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Manage.Services.flightService;
import com.Manage.domain.flight;

@Controller
public class flightController {
	@Autowired
	private flightService fservice;
	
	@RequestMapping(value= "/flight_form")
	public String flightForm(Model m) {
		flight f=new flight();
		m.addAttribute("command",f);
		return "flightForm";
	}
	
	@RequestMapping(value= "/flightList")
	public String flightlist(Model m,HttpSession session) {
		Integer userId=(Integer)session.getAttribute("userId");
		m.addAttribute("flightList", fservice.findUserFlight(userId));		
		return "flightList";
	}

	@RequestMapping(value= "/dataSearch")
	public String pratice(Model m,@RequestParam(value = "freeText") String freeText,@RequestParam(value = "freeText2") String freeText2,@RequestParam(value = "freeText3") String freeText3
) {

		m.addAttribute("flightList",fservice.findAllBook( freeText,freeText2,freeText3) );
		return "BookFlightlist";
	}
	
	@RequestMapping(value={"/pov"})
	public String povery() {
		return "poor";
	}
	
	@RequestMapping(value= "/adminflightList")
	public String adminflightlist(Model m) {
		
		m.addAttribute("flightList", fservice.findAll());		
		return "AdminflightList";
	}
	
	@RequestMapping(value= "/user/del")
	public String flightListDelete(@RequestParam("fid") Integer flightId) {
		
		fservice.delete(flightId);
		return "redirect:/adminflightList?act=del";
	}
	
	@RequestMapping(value= "/user/update")
	public String flightListUpdate( Model m,HttpSession session,@RequestParam("fid") Integer flightId) {
		session.setAttribute("upflightId", flightId);
		flight f=fservice.findById(flightId);
		m.addAttribute("command",f);
		return "flightForm";
	}
	
	@RequestMapping(value= "/user/book")
	public String flightListBook( Model m,HttpSession session,@RequestParam("fid") Integer flightId) {
		session.setAttribute("upflightId", flightId);
		flight f=fservice.findById(flightId);
		Map<String,String > traveler=new HashMap<>();
		traveler.put("ad", "adult");
		traveler.put("ch", "child");
		traveler.put("se", "senior");
	

		m.addAttribute("command",f);
		m.addAttribute("traveler",traveler);
		return "bookForm";
	}
	
	
	
	@RequestMapping(value= "/flights")
	public String saveFlightsOrUpadate( @ModelAttribute("command") flight f,Model m,HttpSession session) {
		Integer flightId=(Integer)session.getAttribute("upflightId");
		if(flightId==null) {
		
		
		try {
		Integer userId=(Integer)session.getAttribute("userId");
		f.setUserId(userId);
		fservice.save(f);
		return  "redirect:/adminflightList?act=saved";
	}
		catch( Exception e) {
			
			e.printStackTrace();
			m.addAttribute("err", "failed to save flights details");
			return "flightForm";
			}
		}
	
	else {
		
		try {
			f.setFlightId(flightId);
			fservice.update(f);
			return  "redirect:/adminflightList?act=up";
		}
			catch( Exception e) {
				
				e.printStackTrace();
				m.addAttribute("err", "failed to  flights details");
				return "flightForm";
				}
	}
	}
	@RequestMapping(value= "/Book/flights")
	public String BookFlights( @ModelAttribute("command") flight f,Model m,HttpSession session) {
		Integer flightId=(Integer)session.getAttribute("upflightId");
		
		
		
		try {
		Integer userId=(Integer)session.getAttribute("userId");
		f.setUserId(userId);
		fservice.save(f);
		return  "redirect:/flightList?act=saved";
	}
		catch( Exception e) {
			
			e.printStackTrace();
			m.addAttribute("err", "failed to save flights details");
			return "flightForm";
			}
		
	
		
	}
	
	

}
