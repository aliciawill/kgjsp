package bean.collection;

import java.util.ArrayList;

import bean.MemberVO;

public class ArrayListTest3 {

	public ArrayList<MemberVO> list() {
		ArrayList<MemberVO> list = new ArrayList<>();
		MemberVO vo;
		for (int i = 0; i < 10; i++) {
			vo = new MemberVO();
			vo.setId("pen" + i);
			vo.setPw("pen" + i);
			vo.setName("pen" + i);
			vo.setTel("pen" + i);
			list.add(vo);
		}
		System.out.println(list);
		System.out.println(list.size());
		return list;
	}

}
