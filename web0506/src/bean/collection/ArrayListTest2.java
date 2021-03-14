package bean.collection;

import java.util.ArrayList;

public class ArrayListTest2 {

	public static void main(String[] args) {
		//<> : 제너릭 프로그래밍, generic
		//     객체생성시 타입을 정할 수 있음.
		//     형변환 필요없음.
		ArrayList<String> list = new ArrayList<>();
		list.add("홍길동");
		list.add("김길동");
		list.add("송길동");
		list.add("박길동");
		String s = list.get(0);
		System.out.println(s);
		System.out.println(list);
	}

}
