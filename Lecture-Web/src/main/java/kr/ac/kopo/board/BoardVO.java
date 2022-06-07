package kr.ac.kopo.board;

/*
 * 자바빈즈 클래스 규칙
 * 1. 패키지 포함
 * 2. 클래스 접근 제한자는 public
 * 3. 기본 생성자 접근
 */

public class BoardVO {
	
	private int no;
	private String title;
	
	public BoardVO() {
		super();
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	
	


}
