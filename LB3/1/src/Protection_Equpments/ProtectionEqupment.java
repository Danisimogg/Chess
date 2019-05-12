package Protection_Equpments;

public class ProtectionEqupment {
	private double weight;
	private double price;
	private String protectionclass;

	public ProtectionEqupment(double weight, double price, String protectionclass) {
		super();
		this.weight = weight;
		this.price = price;
		this.protectionclass = protectionclass;

	}

	public String toString() {
		return "ProtectionEqupment [weight=" + weight + ", price=" + price + ", protectionclass=" + protectionclass
				+ "]";
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getPrice() {
		return price;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public double getWeight() {
		return weight;
	}

	public void setProtectionclass(String protectionclass) {
		this.protectionclass = protectionclass;
	}

	public String getProtectionclass() {
		return protectionclass;
	}

}
