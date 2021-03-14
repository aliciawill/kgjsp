package bean;

import javax.swing.JOptionPane;

public class MemberMain {

	public static void main(String[] args) throws Exception {
		String id = JOptionPane.showInputDialog("id입력");
		String pw = JOptionPane.showInputDialog("pw입력");
		String name = JOptionPane.showInputDialog("name입력");
		String tel = JOptionPane.showInputDialog("tel입력");
		
		//Member테이블과 관련된 데이터들을 넣어줄 가방을 만들어주자.
		//각 데이터를 가방에 넣는다. set메서드 이용.
		//가방을 db create하라고 넘긴다.
		MemberVO bag = new MemberVO();
		bag.setId(id);
		bag.setPw(pw);
		bag.setName(name);
		bag.setTel(tel);
		
		MemberDAO db = new MemberDAO();
		db.create(bag);

	}

}
