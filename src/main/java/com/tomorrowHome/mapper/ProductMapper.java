package com.tomorrowHome.mapper;

import java.util.List;
import java.util.Map;

import com.tomorrowHome.store.product.dto.ProductDTO;
import com.tomorrowHome.store.product.dto.ProductImageDTO;

public interface ProductMapper {

	List<ProductDTO> selectAllGoods();

	List<ProductImageDTO> selectAllGoodsImages(int goodsId);

	List<ProductDTO> selectGoodsByPopurarity(Map<String, Integer> map);



	
}
