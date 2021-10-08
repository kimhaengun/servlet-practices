package com.douzone.emaillist.dao.test;

import java.util.List;

import com.douzone.emaillist.dao.EmaillistDao;
import com.douzone.emaillist.vo.EmaillistVo;

public class EmaillistDaoTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		insert();
		findByAll();
	}

	private static void findByAll() {
		// TODO Auto-generated method stub
		List<EmaillistVo> list = new EmaillistDao().findAll();
		for(EmaillistVo vo : list) {
			System.out.println(vo.toString());
		}
	}

	private static void insert() {
		// TODO Auto-generated method stub
		EmaillistVo vo = new EmaillistVo();
		vo.setFirstName("김");
		vo.setLastName("테스트");
		vo.setEmail("test1@naver.com");
		new EmaillistDao().insert(vo);
	}

}
