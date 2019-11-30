package tiga.hotal.pojo;

public class ironman {

	private int stuNo;
	private String stuName;
	private String stuMajor;
	private String stuCourse;
	private String stuScore;

	public ironman() {
	}

	public ironman(int stuNo, String stuName, String stuMajor, String stuCourse, String stuScore) {
		super();
		this.stuNo = stuNo;
		this.stuName = stuName;
		this.stuMajor = stuMajor;
		this.stuCourse = stuCourse;
		this.stuScore = stuScore;
	}

	public int getStuNo() {
		return stuNo;
	}

	public void setStuNo(int stuNo) {
		this.stuNo = stuNo;
	}

	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public String getStuMajor() {
		return stuMajor;
	}

	public void setStuMajor(String stuMajor) {
		this.stuMajor = stuMajor;
	}

	public String getStuCourse() {
		return stuCourse;
	}

	public void setStuCourse(String stuCourse) {
		this.stuCourse = stuCourse;
	}

	public String getStuScore() {
		return stuScore;
	}

	public void setStuScore(String stuScore) {
		this.stuScore = stuScore;
	}

	@Override
	public String toString() {
		return "ironman [stuNo=" + stuNo + ", stuName=" + stuName + ", stuMajor=" + stuMajor + ", stuCourse="
				+ stuCourse + ", stuScore=" + stuScore + "]";
	}

}
