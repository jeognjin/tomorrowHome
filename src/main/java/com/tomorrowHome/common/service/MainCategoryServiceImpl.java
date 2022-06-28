package com.tomorrowHome.common.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tomorrowHome.common.dto.MainCategoryDTO;
import com.tomorrowHome.mapper.MainCategoryMapper;

@Service
public class MainCategoryServiceImpl implements MainCategoryService{

	@Autowired
	private MainCategoryMapper categoryMapper;
	
	@Override
	public List<MainCategoryDTO> listMain() {
		
		return categoryMapper.selectAllCategory();
	}

}
