package Money;

public class moneyChange {
	/* private �� �ʵ� ���� �� set �� get �� �ۼ� */
	private int number; // �Ӽ�- ��� �ʵ�

	public int getNumber() { // �Ӽ� - �� �о� �� ��
		// nunmber �� ���� �� ���� ��ȯ
		return number;
	}

	public void setNumber(int number) { // �Ӽ� - �� ������ ��
		// �Էµ� ��ȭ�� number �� ����
		this.number = number;
	}

	public int America() { // moneyChange_out.jsp ���� ȣ����
		int aa = number / 1100;
		return aa;
	}

	public int Japan() { // moneyChange_out.jsp ���� ȣ����
		int bb = number / 100;
		return bb;
	}

}
