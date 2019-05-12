package Protection_Equpments;

public class Respirator extends ProtectionEqupment {
	private ProtectionEqupment ProtectionEqupment;
	private String type;
	private boolean exhalationValve;

	public Respirator(ProtectionEqupment protectionEqupment, double price, double weight, String protectionclass,
			String type, boolean exhalationValve) {
		super(price, weight, protectionclass);
		this.type = type;
		this.exhalationValve = exhalationValve;
	}

	public ProtectionEqupment getProtectionEqupment() {
		return ProtectionEqupment;
	}

	public void setProtectionEqupment(ProtectionEqupment ProtectionEqupment) {
		this.ProtectionEqupment = ProtectionEqupment;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public boolean getExhalationValve() {
		return exhalationValve;
	}

	public void setExhalationValve(boolean exhalationValve) {
		this.exhalationValve = exhalationValve;
	}
}
