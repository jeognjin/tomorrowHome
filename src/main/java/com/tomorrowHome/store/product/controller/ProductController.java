package com.tomorrowHome.store.product.controller;

import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tomorrowHome.common.dto.MainCategoryDTO;
import com.tomorrowHome.common.util.HomeUtil;
import com.tomorrowHome.community.dto.CommunityBoardDTO;
import com.tomorrowHome.member.dto.AuthUserDTO;
import com.tomorrowHome.store.order.dto.OrderDTO;
import com.tomorrowHome.store.product.dto.ProductDTO;
import com.tomorrowHome.store.product.dto.ProductReviewDTO;
import com.tomorrowHome.store.product.service.ProductService;

import lombok.extern.java.Log;
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
		/* List<CartDTO> cartList = new ArrayList<CartDTO>(); */
		List<ProductDTO> goodsCategoryList = productService.goodsListByCategory(productDTO.getGoodsCategoryId());
		System.out.println("productDTO>>>"+ productDTO);
		model.addAttribute("productDTO", productDTO);
		/* model.addAttribute("cartList", cartList); */
		model.addAttribute("goodsCategoryList", goodsCategoryList);
		System.out.println("goodsCategoryList>>>>>>>>"+goodsCategoryList);
		return "store/productDetail";
	}

	// 리뷰에 첨부된 사진 경로에 저장하기
	@PostMapping("/productReviewImage")
	@ResponseBody
	public String productReviewImage(String goodsId, HttpSession session,
			MultipartHttpServletRequest multipartRequest) {
		String image_path = "C:\\tomorrowHome_images\\";
		List<String> imageFileList = new ArrayList<>();
		String reviewImage = "";
		try {
			imageFileList = HomeUtil.upload(multipartRequest);
			for (String imageFileName : imageFileList) {
				reviewImage = imageFileName;
				System.out.println("reviewImage>>>>>>>>>>"+reviewImage);
				session.setAttribute("reviewImage", reviewImage);
			}
			if (imageFileList != null && imageFileList.size() != 0) {
				for (String imageFileName : imageFileList) {
					File srcFile = new File(image_path + "\\" + "temp" + "\\" + imageFileName);
					File destDir = new File(image_path + "\\" + "product_review" + "\\" + goodsId);
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
					System.out.println("경로" + destDir);
				}
			}
		}
		// (imageFileList가 null, size가 0이 아닐 경우)까지 왔을 경우 : > delete : temp에 있는 이미지 +
		// s_이미지까지 전부
		catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (String imageFileName : imageFileList) {
					File srcFile = new File(image_path + "\\" + "temp" + "\\" + imageFileName);
					srcFile.delete();
				}
			}
			e.printStackTrace();
		}
		return "success";
	}
	
	//DB에 리뷰 입력하기
	@PostMapping(value = "/productReview")
	public @ResponseBody String productReview(@RequestBody ProductReviewDTO review, HttpSession session) {
		AuthUserDTO authUser = (AuthUserDTO) session.getAttribute("authUser");
		System.out.println("review>>>>>"+review);
		if(authUser == null) {
			return "login";
		}else {
			review.setMemberId(authUser.getMemberId());
			review.setReviewImage((String) session.getAttribute("reviewImage"));
			try {
				System.out.println("review>>>>>"+review);
				productService.addReview(review);
			} catch (SQLException e) {
				e.printStackTrace();
				return "fail";
			}
			return "success";
		}
		
	}
	
}
