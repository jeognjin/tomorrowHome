package com.tomorrowHome.store.order.dto;

import lombok.Data;

@Data
public class AdressBook {

	int adressBookId; /* 주소록번호 */
	int memberId; /* 회원번호 */
	String adressType; /* 기본배송지여부 */
	String adressName; /* 배송지명 */
	String recipient; /* 받는사람 */
	int tel; /* 연락처 */
	String adress; /* 주소 */
}
