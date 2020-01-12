package webTest3;

public class DeepCopyModel implements Cloneable {
	public String name = "fdv";
	public String email = "sdvsv";

	@Override
	public Object clone() {
		DeepCopyModel p = new DeepCopyModel(name, email);

		return p;
	}

	public DeepCopyModel(String name, String email) {
		this.name = name;
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
