package com.niit.gadgets.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.gadgets.dao.CartDAO;
import com.niit.gadgets.dao.ProductDAO;
import com.niit.gadgets.model.Cart;

import helper.Summary;


@Controller
public class CartController {
	
	
		@Autowired
		ProductDAO product;
		
		@Autowired
		CartDAO cart1;
		
		@RequestMapping("/viewCart")
		public ModelAndView viewCart(){
			
			ModelAndView mv=new ModelAndView("viewCart");
			List<Cart> cartList=cart1.getAll();
			
			mv.addObject("cartlist", cartList);
			return mv;
		}
		@RequestMapping("customerDetails")
		public ModelAndView customer()
		{
			
			ModelAndView mv=new ModelAndView("customerDetails");
			return mv;
		}
		
		@RequestMapping(value="/summary")
		public ModelAndView summery(HttpServletRequest request)
		{
				
			
			Summary summary=new Summary();
			summary.setName(request.getParameter("name"));
			summary.setEmail(request.getParameter("email"));
			summary.setContact(request.getParameter("phone"));
			summary.setAddress(request.getParameter("textarea"));
			summary.setDate(request.getParameter("date"));
				
			
			ModelAndView m8=new ModelAndView("summary");
			m8.getModelMap().addAttribute("summary", summary);
			return m8;
			
		}
		
		@RequestMapping("/cart_delete")
		public ModelAndView editCart(HttpServletRequest request)
		{
		int cid=Integer.valueOf(request.getParameter("id"));
		Cart c=cart1.getId(cid);
		System.out.println(c);
		cart1.delete(c);

		ModelAndView mv=new ModelAndView("viewCart");
		List<Cart> cartList=cart1.getAll();

		mv.addObject("cartlist", cartList);
		return mv;
		}
		
		
		@RequestMapping("/ok")
		public ModelAndView good(){
			ModelAndView p=new ModelAndView("closing");
			return p;
		}
	}

