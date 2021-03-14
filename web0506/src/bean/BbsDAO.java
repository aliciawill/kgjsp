package bean;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

//DB Access Object(DAO)
public class BbsDAO {
	Connection con;  //선언, 타입 변수명;
	DBConnectionMgr dbcp;
	
	public BbsDAO() throws Exception{
		dbcp = DBConnectionMgr.getInstance();
	}

	
	public BbsVO read(String no) throws Exception {
		con = dbcp.getConnection();
		String sql = "select * from bbs where no = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, Integer.parseInt(no));
		System.out.println("3. sql문 객체로 생성 ok");

		ResultSet result = ps.executeQuery();
		System.out.println("4. sql문 mysql로 전송 ok");
		BbsVO bag = new BbsVO();
		if (result.next()) {
			String title = result.getString(2);
			String content = result.getString(3);
			String writer = result.getString(4);
			System.out.println(no);
			System.out.println(title);
			System.out.println(content);
			System.out.println(writer);
			bag.setNo(no);
			bag.setTitle(title);
			bag.setContent(content);
			bag.setWriter(writer);
		} else {
			System.out.println("검색 결과 없음.");
		}
		dbcp.freeConnection(con, ps, result);
		return bag;
	}
	public ArrayList<BbsVO> list() throws Exception {
		con = dbcp.getConnection();
		ArrayList<BbsVO> list = new ArrayList<BbsVO>();
		String sql = "select * from bbs";
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("3. sql문 객체로 생성 ok");

		ResultSet result = ps.executeQuery();
		System.out.println("4. sql문 mysql로 전송 ok");
		while (result.next()) {
			BbsVO bag = new BbsVO();
			bag.setNo(result.getString(1));
			bag.setTitle(result.getString(2));
			bag.setContent(result.getString(3));
			bag.setWriter(result.getString(4));
			list.add(bag);
		} 
		System.out.println(list.size());
		dbcp.freeConnection(con, ps, result);
		return list;
	}
	
}
