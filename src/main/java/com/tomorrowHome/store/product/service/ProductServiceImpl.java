package com.tomorrowHome.store.product.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tomorrowHome.mapper.ProductMapper;
import com.tomorrowHome.store.product.dto.ProductDTO;
import com.tomorrowHome.store.product.dto.ProductImageDTO;
import com.tomorrowHome.store.product.dto.ProductReviewDTO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductMapper productMapper;
		
	@Override
	public Map<String, List<ProductDTO>> listGoods() {
		Map<String, List<ProductDTO>> listMap = new HashMap<>();
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", 1);
		map.put("end", 8);
		List<ProductDTO> storeList = productMapper.selectGoodsByPopurarity(map);
		List<ProductDTO> todayList = productMapper.selectGoodsByDiscountRate(map);
		listMap.put("storeList", storeList);
		listMap.put("todayList", todayList);
		return listMap;
		
	}

	@Override
	public List<ProductDTO> storeListGoods(Map<String, Integer> map) {
		
		return productMapper.selectGoodsByPopurarity(map);
	}
	
	@Override
	public List<ProductDTO> todayDealListGoods(Map<String, Integer> map) {
		
		return productMapper.selectGoodsByDiscountRate(map);
	}

	@Override
	public List<Map<String, String>> storeCategoryList() {
		return productMapper.selectCategoryList();
		
	}

	@Override
	public List<ProductDTO> goodsListByCategory(int category) {
		
		return productMapper.selectListByCategory(category);
	}

	@Override
	public ProductDTO listGoodsByGoodsId(int goodsId) {
		
		return productMapper.selectlistGoodsByGoodsId(goodsId);
	}
	
	@Override
	public void addReview(ProductReviewDTO review) throws SQLException {
		productMapper.insertReview(review);
		
	}
}
