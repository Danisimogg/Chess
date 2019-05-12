package Protection_Equpments;

public class Forceps extends ProtectionEqupment {
	private ProtectionEqupment ProtectionEqupment;
	private String material;
	private double length;

	public Forceps(ProtectionEqupment protectionEqupment, double price, double weight, String protectionclass,
			String material, double length) {
		super(price, weight, protectionclass);
		this.material = material;
		this.length = length;
	}

	public ProtectionEqupment getProtectionEqupment() {
		return ProtectionEqupment;
	}

	public void setProtectionEqupment(ProtectionEqupment ProtectionEqupment) {
		this.ProtectionEqupment = ProtectionEqupment;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public double getLength() {
		return length;
	}

	public void setLength(double length) {
		this.length = length;
	}
}
