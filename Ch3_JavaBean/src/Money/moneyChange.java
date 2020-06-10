package Money;

public class moneyChange {
	/* private 한 필드 선언 후 set 와 get 를 작성 */
	private int number; // 속성- 멤버 필드

	public int getNumber() { // 속성 - 값 읽어 올 때
		// nunmber 에 저장 된 값을 반환
		return number;
	}

	public void setNumber(int number) { // 속성 - 값 저장할 때
		// 입력된 원화를 number 에 저장
		this.number = number;
	}

	public int America() { // moneyChange_out.jsp 에서 호출함
		int aa = number / 1100;
		return aa;
	}

	public int Japan() { // moneyChange_out.jsp 에서 호출함
		int bb = number / 100;
		return bb;
	}

}
