package webTest3;

public class DeepCopy {

	public static void main(String[] args) {
		DeepCopyModel deepCopy1 = new DeepCopyModel("aaa", "bbb");
		DeepCopyModel deepCopy2 = deepCopy1;
		deepCopy2.setName("ccc");
		System.out.println(deepCopy2 == deepCopy1);

		DeepCopyModel deepCopy3 = (DeepCopyModel) deepCopy1.clone();
		deepCopy3.setName("ddd");
		System.out.println(deepCopy3 == deepCopy1);

	}
}
