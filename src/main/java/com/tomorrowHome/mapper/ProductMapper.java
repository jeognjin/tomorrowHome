package com.tomorrowHome.mapper;

import java.util.List;
import java.util.Map;

import com.tomorrowHome.store.product.dto.ProductDTO;
import com.tomorrowHome.store.product.dto.ProductImageDTO;
import com.tomorrowHome.store.product.dto.ProductReviewDTO;

public interface ProductMapper {

	List<ProductDTO> selectAllGoods();

	List<ProductImageDTO> selectAllGoodsImages(int goodsId);

	List<ProductDTO> selectGoodsByPopurarity(Map<String, Integer> map);

	List<ProductDTO> selectGoodsByDiscountRate(Map<String, Integer> map);

	List<Map<String, String>> selectCategoryList();

	List<ProductDTO> selectListByCategory(int category);

	ProductDTO selectlistGoodsByGoodsId(int goodsId);

	void insertReview(ProductReviewDTO review);

	
}
