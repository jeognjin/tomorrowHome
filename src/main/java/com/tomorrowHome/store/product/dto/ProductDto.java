package com.tomorrowHome.store.product.dto;

public class ProductDto {
	private int goods_id; //상품 번호
	private String goods_name; //상품 이름
	private String goods_sort; //상품 분류
	private String goods_brand; //상품 브랜드
	private int goods_price; //상품 가격(원가)
	private int goods_sales_price; //상품 할인 가격
	private int goods_point; //상품 적립금
	private String goods_delivery_type; //상품 배송 타입
	private int goods_category_id; //카테고리ID
	
	public ProductDto() {}

	public int getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public String getGoods_sort() {
		return goods_sort;
	}

	public void setGoods_sort(String goods_sort) {
		this.goods_sort = goods_sort;
	}

	public String getGoods_brand() {
		return goods_brand;
	}

	public void setGoods_brand(String goods_brand) {
		this.goods_brand = goods_brand;
	}

	public int getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}

	public int getGoods_sales_price() {
		return goods_sales_price;
	}

	public void setGoods_sales_price(int goods_sales_price) {
		this.goods_sales_price = goods_sales_price;
	}

	public int getGoods_point() {
		return goods_point;
	}

	public void setGoods_point(int goods_point) {
		this.goods_point = goods_point;
	}

	public String getGoods_delivery_type() {
		return goods_delivery_type;
	}

	public void setGoods_delivery_type(String goods_delivery_type) {
		this.goods_delivery_type = goods_delivery_type;
	}

	public int getGoods_category_id() {
		return goods_category_id;
	}

	public void setGoods_category_id(int goods_category_id) {
		this.goods_category_id = goods_category_id;
	}
	
	
}
