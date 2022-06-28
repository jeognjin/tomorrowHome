package com.tomorrowHome.common.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tomorrowHome.common.dto.MainCategoryDTO;
import com.tomorrowHome.common.service.MainCategoryService;
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

	@Autowired
	private MainCategoryService mainCategoryService;

	@GetMapping("/")
	public String home(Model model) {
		List<ProductDTO> goodsList = productService.listGoods();
		List<CommunityBoardDTO> boardList = boardService.listBoard();
		List<MainCategoryDTO> mainCategoryList = mainCategoryService.listMain();
		model.addAttribute("goodsList", goodsList);
		model.addAttribute("boardList", boardList);
		model.addAttribute("mainCategoryList", mainCategoryList);

		System.out.println("goodsList>>>" + goodsList);
		System.out.println("boardList>>>" + boardList);
		System.out.println("mainCategoryList>>>" + mainCategoryList);
		return "index";
	}

	@GetMapping("/store")
	public String store(Model model) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", 1);
		map.put("end", 8);
		List<ProductDTO> goodsList = productService.storeListGoods(map);
		List<MainCategoryDTO> mainCategoryList = mainCategoryService.listMain();
		model.addAttribute("goodsList", goodsList);
		model.addAttribute("mainCategoryList", mainCategoryList);

		System.out.println("goodsList>>>" + goodsList);
		System.out.println("mainCategoryList>>>" + mainCategoryList);
		return "store/storeMain";
	}

	@GetMapping("/storeScroll")
	@ResponseBody 
	public List<ProductDTO> storeScroll(@Nullable @RequestParam("begin") String begin ) {
		System.out.println("begin >>>>>>>>>>>>>>>> " + begin);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", Integer.parseInt(begin));
		map.put("end", Integer.parseInt(begin)+7);
		List<ProductDTO> goodsList = productService.storeListGoods(map);	
		
		System.out.println("goodsList>>>"+goodsList);
		return goodsList;
	}

	@GetMapping("/cart")
	public String cart_empty(Model model) {

		return "store/cartEmpty";
	}
}
