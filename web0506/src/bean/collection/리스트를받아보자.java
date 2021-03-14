package bean.collection;

import java.util.ArrayList;

import bean.MemberVO;

public class 리스트를받아보자 {

	public static void main(String[] args) {
		ArrayListTest3 test = new ArrayListTest3();
		ArrayList<MemberVO> list = test.list();
		for (int i = 0; i < list.size(); i++) {
			//컨테이너를 다 받아온다.
			MemberVO vo = list.get(i);
			//컨테이너에서 가방을 하나 꺼낸다.
			//가방에서 하나씩 꺼내준다.
			System.out.println(vo.getId());
			System.out.println(vo.getPw());
			System.out.println(vo.getName());
			System.out.println(vo.getTel());
		}
		
		for(MemberVO vo: list) {
			System.out.println(vo.getId());
			System.out.println(vo.getPw());
			System.out.println(vo.getName());
			System.out.println(vo.getTel());
		}
		
		

	}

}
