package in.ineuron.dto;

import java.io.Serializable;

public class EmployeeDto implements Serializable {
		private static final long serialVersionUID=1L;
	private Integer eid;
	private String ename;
	private Integer bsalary;
	private float netSalary;
	private float grossSalary;
	
	public EmployeeDto() {
		System.out.println("enclosing_type.enclosing_method()");
	}

	public Integer getEid() {
		return eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public Integer getBsalary() {
		return bsalary;
	}

	public void setBsalary(Integer bsalary) {
		this.bsalary = bsalary;
	}

	public float getNetSalary() {
		return netSalary;
	}

	public void setNetSalary(float netSalary) {
		this.netSalary = netSalary;
	}

	public float getGrossSalary() {
		return grossSalary;
	}

	public void setGrossSalary(float grossSalary) {
		this.grossSalary = grossSalary;
	}

	@Override
	public String toString() {
		return "EmployeeDto [eid=" + eid + ", ename=" + ename + ", bsalary=" + bsalary + ", netSalary=" + netSalary
				+ ", grossSalary=" + grossSalary + "]";
	}
	
	
	
	
}
