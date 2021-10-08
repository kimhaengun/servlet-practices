package com.douzone.guestbook01.dao.test;

import java.util.List;

import com.douzone.guestbook01.dao.GuestBookDao;
import com.douzone.guestbook01.vo.GuestBookVo;

public class GuestBookDaoTest {
	public static void main(String[] args) {
//		insert();
//		findAll();
		delete();
	}

	private static void delete() {
		// TODO Auto-generated method stub
		GuestBookVo vo = new GuestBookVo();
		vo.setNo(2L);
		vo.setPassword("1234");
		
		new GuestBookDao().delete(vo);
	}

	private static void findAll() {
		// TODO Auto-generated method stub
		List<GuestBookVo> list = new GuestBookDao().findAll();
		for(GuestBookVo vo : list) {
			System.out.println(vo.toString());
		}
	}

	private static void insert() {
		// TODO Auto-generated method stub
		GuestBookVo vo = new GuestBookVo();
		vo.setName("김");
		vo.setPassword("1234");
		vo.setMessage("내용 테스트 중입니다.");
		GuestBookDao dao = new GuestBookDao();
		dao.insert(vo);
	}
}
