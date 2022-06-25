package com.tomorrowHome.store.product.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class ProductImageDTO {
	private int imageId; //이미지 번호
	private int goodsId; //상품 번호
	private String fileName; //파일 이름
	private String fileType; //파일 종류
	
	
	
	
}
