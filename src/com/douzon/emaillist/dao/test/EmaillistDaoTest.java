package com.douzon.emaillist.dao.test;

import java.util.List;

import com.douzon.emaillist.dao.EmaillistDao;
import com.douzon.emaillist.vo.EmaillistVo;

public class EmaillistDaoTest {
	public static void main(String[] args) {
		getListTest();
	}
	
	public static void getListTest() {
		List<EmaillistVo> list=new EmaillistDao().getList();
		
		for(EmaillistVo emaillistVo : list) {
			System.out.println(emaillistVo);
		}
	}
}
