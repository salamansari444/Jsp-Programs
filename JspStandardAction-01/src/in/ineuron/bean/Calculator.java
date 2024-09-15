package in.ineuron.bean;

public class Calculator {
	static {
		System.out.println("Calculator.class file is loadedd...");
	}
	public void Calculator() {
		System.out.println("Calculator.class file is Instantiated...");
	}
	public int squareIt(int x) {
		return x*x;
	}
}
