package project1;

public enum EnumJava {
	circle("3.14"),
	abc("9999");
	
	
	
    private final String radius; 
    EnumJava(String radius) {
        this.radius = radius;
    }
    
    public static void main(String[] args) {
		System.out.println(abc.radius);
	}

}
