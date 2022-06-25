package com.tomorrowHome.store.product.service;

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

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductMapper productMapper;
		
	@Override
	public List<ProductDTO> listGoods() {
		return productMapper.selectAllGoods();
		
	}
	
}
