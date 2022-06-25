package com.tomorrowHome.common.controller;

import java.util.List;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tomorrowHome.community.dto.CommunityBoardDTO;
import com.tomorrowHome.community.service.CommunityBoardService;
import com.tomorrowHome.store.product.dto.ProductDTO;
import com.tomorrowHome.store.product.service.ProductService;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
public class HomeController {
	
	@Autowired
	private ProductService productService;

	@Autowired
	private CommunityBoardService boardService;
	
	@GetMapping("/")
	public String home(Locale locale, Model model) {
		List<ProductDTO> goodsList = productService.listGoods();	
		List<CommunityBoardDTO> boardList = boardService.listBoard();
		model.addAttribute("goodsList", goodsList);
		model.addAttribute("boardList", boardList);
		System.out.println("goodsList>>>"+goodsList);
		return "index";
	}
	
}
