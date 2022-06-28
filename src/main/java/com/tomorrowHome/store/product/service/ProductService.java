package com.tomorrowHome.store.product.service;

import java.util.List;
import java.util.Map;

import com.tomorrowHome.store.product.dto.ProductDTO;

public interface ProductService {

	List<ProductDTO> listGoods();

	List<ProductDTO> storeListGoods(Map<String, Integer> map);

	
}
