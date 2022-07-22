package com.tomorrowHome.store.product.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.tomorrowHome.store.product.dto.ProductDTO;
import com.tomorrowHome.store.product.dto.ProductReviewDTO;

public interface ProductService {

	Map<String, List<ProductDTO>> listGoods();

	List<ProductDTO> storeListGoods(Map<String, Integer> map);

	List<ProductDTO> todayDealListGoods(Map<String, Integer> map);

	List<Map<String, String>> storeCategoryList();

	List<ProductDTO> goodsListByCategory(int category);

	ProductDTO listGoodsByGoodsId(int goodsId);
	
	void addReview(ProductReviewDTO review) throws SQLException;

	
}
