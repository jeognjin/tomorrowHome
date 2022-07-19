package com.tomorrowHome.store.order.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tomorrowHome.member.dto.AuthUserDTO;
import com.tomorrowHome.store.order.dto.OrderDTO;
import com.tomorrowHome.store.order.service.OrderService;
import com.tomorrowHome.store.product.dto.ProductDTO;
import com.tomorrowHome.store.product.service.ProductService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class OrderController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private OrderService orderService;
	
	//주문하기 버튼 눌러서 접근하면 결제 페이지로 이동
		@GetMapping("/orderGoods")
		public String orderGoods(String goodsId, Model model) {
			int _goodsId = Integer.parseInt(goodsId);
			ProductDTO productDTO = productService.listGoodsByGoodsId(_goodsId);
			System.out.println("productDTO>>>" + productDTO);
			model.addAttribute("productDTO", productDTO);
			return "store/orderGoodsForm";
		}
		
		//결제하기 누르면 DB에 저장하고 결제완료
		@PostMapping("/orderGoods")
		@ResponseBody
		public String orderGoods(@RequestBody OrderDTO order, HttpSession session) {
			AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
			order.setMemberId(authUser.getMemberId());
			System.out.println("orderDTO >>>>>"+order);
			try {
				orderService.addOrder(order);
				return "success";
			} catch (SQLException e) {
				e.printStackTrace();
				return "fail";
			}
		}
}
