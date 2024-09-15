package in.ineuron.bean;

public class Student {
	private Integer sid;
	private String sname;
	private Integer sage;
	private String saddr;
	
	static {
		System.out.println("Student.class file is loading....");
	}
	public Student() {
		System.out.println("Student object is created....");
	}
	
	public Integer getSid() {
		System.out.println("Student.getSid()");
		return sid;
	}
	public void setSid(Integer sid) {
		System.out.println("Student.setSid()");
		this.sid = sid;
	}
	public String getSname() {
		System.out.println("Student.getSname()");
		return sname;
	}
	public void setSname(String sname) {
		System.out.println("Student.setSname()");
		this.sname = sname;
	}
	public Integer getSage() {
		System.out.println("Student.getSage()");
		return sage;
	}
	public void setSage(Integer sage) {
		System.out.println("Student.setSage()");
		this.sage = sage;
	}
	public String getSaddr() {
		System.out.println("Student.getSaddr()");
		return saddr;
	}
	public void setSaddr(String saddr) {
		System.out.println("Student.setSaddr()");
		this.saddr = saddr;
	}
	
	
	@Override
	public String toString() {
		return "Student [sid=" + sid + ", sname=" + sname + ", sage=" + sage + ", saddr=" + saddr + "]";
	}
	
	
	
	

}
