package web_basic.jsp_ch07;

public class Student {

	private int stdNo;
	private String stdName;
	private int kor;
	private int eng;
	private int math;
	
	public int getTotal() {
		return kor + eng + math;
	}
	
	public int getAvg() {
		return getTotal()/3;
	}
	
	public Student() {

	}

	public Student(int stdNo, String stdName, int kor) {
		super();
		this.stdNo = stdNo;
		this.stdName = stdName;
		this.kor = kor;
	}

	// getter setter 만들기
	public int getStdNo() {
		return stdNo;
	}

	public void setStdNo(int stdNo) {
		this.stdNo = stdNo;
	}

	public String getStdName() {
		return stdName;
	}

	public void setStdName(String stdName) {
		this.stdName = stdName;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}
	
	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getMath() {
		return math;
	}

	public void setMath(int math) {
		this.math = math;
	}

	@Override
	public String toString() {
		return "Student [stdNo=" + stdNo + ", stdName=" + stdName + ", kor=" + kor + "]";
	}
	
}
