package com.tomorrowHome.store.product.dto;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class ProductDTO {
	private int goodsId; //�긽�뭹 踰덊샇
	private String goodsName; //�긽�뭹 �씠由�
	private String goodsBrand; //�긽�뭹 釉뚮옖�뱶
	private int goodsPrice; //�긽�뭹 媛�寃�(�썝媛�)
	private double discountRate; //�긽�뭹 �븷�씤�쑉
	private double pointRate; //�룷�씤�듃 �쟻由쎌쑉
	private Date registGoodsDate; //�벑濡� �궇吏�
	private String productThumbnail; //�긽�뭹 �꽟�꽕�씪
	private String goodsStatus; //�뒪�넗�뼱 遺꾨쪟 
	private int goodsCategoryId; //移댄뀒怨좊━ID
	
	

}
