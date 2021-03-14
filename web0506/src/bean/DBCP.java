package bean;

public class DBCP {
	static DBCP instance;
	//객체생성되기 전에 클래스이름으로 특정한 사용하는 방법
	//외부에서 DBCP객체를 만들수없음. 생성자를 외부 클래스에서 접근할 수 없도록
	//private으로 접근제어 지정
	private DBCP() {
	}
	public static DBCP getInstance() {
		//DBCP객체가 만들어져있으면 그것을 return
		//DBCP객체가 만들어져있지 않으면 그것을 
		//객체를 만들어서 return
		if(instance == null) {
			instance = new DBCP();
		}
		return instance;
	}
}
	