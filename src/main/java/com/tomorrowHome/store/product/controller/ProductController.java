package com.tomorrowHome.store.product.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tomorrowHome.common.dto.MainCategoryDTO;
import com.tomorrowHome.community.dto.CommunityBoardDTO;
import com.tomorrowHome.store.product.dto.ProductDTO;
import com.tomorrowHome.store.product.service.ProductService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	
	@GetMapping("/todayDeals")
	public String todayDeals(Model model) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", 1);
		map.put("end", 8);
		List<ProductDTO> goodsList = productService.todayDealListGoods(map);
	
		model.addAttribute("goodsList", goodsList);
		model.addAttribute("url", "todayScroll");
		model.addAttribute("currPage", "store");
		return "store/todayDeal";
	}
	
	@GetMapping("/todayScroll")
	@ResponseBody 
	public List<ProductDTO> storeScroll(@Nullable @RequestParam("begin") String begin ) {
		System.out.println("begin >>>>>>>>>>>>>>>> " + begin);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", Integer.parseInt(begin));
		map.put("end", Integer.parseInt(begin)+7);
		List<ProductDTO> goodsList = productService.todayDealListGoods(map);	
		
		System.out.println("goodsList>>>"+goodsList);
		return goodsList;
	}
	
	@GetMapping("/storeCategory")
	public String storeCategory(Model model, @Nullable@RequestParam("category") String category) {
		if(category == null) category = "101";
		List<Map<String, String>> storeCategoryList = productService.storeCategoryList();
		List<ProductDTO> goodsCategoryList = productService.goodsListByCategory(Integer.parseInt(category));
		
		
		Map<String, List<ProductDTO>> goodsMap= productService.listGoods();
		model.addAttribute("goodsMap", goodsMap);	 
		model.addAttribute("storeCategoryList", storeCategoryList);
		model.addAttribute("currPage", "store");
		model.addAttribute("goodsCategoryList", goodsCategoryList);
		model.addAttribute("category", "category");
		System.out.println("storeCategoryList>>>"+ storeCategoryList);
		System.out.println("goodsCategoryList>>>"+ goodsCategoryList);
		
		return "store/storeCategory";
	}
	
	@GetMapping("/productDetail/{goodsId}")
	public String productDetail(Model model, @PathVariable int goodsId) {
		System.out.println("goodsId  >>>> "+ goodsId);
		ProductDTO productDTO= productService.listGoodsByGoodsId(goodsId);	
		System.out.println("productDTO>>>"+ productDTO);
		model.addAttribute("productDTO", productDTO);
		return "store/productDetail";
	}
	
}
