package project5;

public class PrintCostGener<S, T> {
	S s;
	T t;
	
	public S getS() {
		return s;
	}

	public void setS(S s) {
		this.s = s;
	}

	public T getT() {
		return t;
	}

	public void setT(T t) {
		this.t = t;
	}

	public void printCost() {
		System.out.println(s + ":" + t);
	}
}
