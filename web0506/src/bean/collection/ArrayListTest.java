package bean.collection;

import java.util.ArrayList;

import bean.MemberVO;

public class ArrayListTest {

	public static void main(String[] args) {
		ArrayList list = new ArrayList();
		list.add("홍길동");	
		//String(작)-->Object(큰)(형변환, casting)
		//업캐스팅, 자동형변환
		list.add(100); 
		//int-->Integer(포장클래스, wrapper)-->Object
		//   auto-boxing                 upcasting
		list.add(11.11);
		list.add(true);
		list.add(new MemberVO());
		System.out.println(list);
		list.remove(4);
		System.out.println(list);
		String name = (String)list.get(0); 
		//Object --> String, 강제형변환, 다운캐스팅
		System.out.println(name);
		int age = (int)list.get(1);
		//int<--Integer(포장클래스, wrapper)<--Object
		//  auto-unboxing                 downcasting
	}

}


