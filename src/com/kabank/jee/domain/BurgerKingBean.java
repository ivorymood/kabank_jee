package com.kabank.jee.domain;

import java.io.Serializable;

public class BurgerKingBean implements Serializable{
	private String menu, price, count, checkbox;

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	public String getCheckbox() {
		return checkbox;
	}

	public void setCheckbox(String checkbox) {
		this.checkbox = checkbox;
	}

	@Override
	public String toString() {
		return "메뉴 [상품명: " + menu + ", 가격: " + price + " 원, 수량: " + count + "]";
	}
	
}