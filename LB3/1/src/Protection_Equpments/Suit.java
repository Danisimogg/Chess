package Protection_Equpments;


	public class Suit extends ProtectionEqupment {
		private ProtectionEqupment ProtectionEqupment;
		private String size;
		private String cloth;

		public Suit(ProtectionEqupment protectionEqupment, double price, double weight, String protectionclass,
				String size, String cloth) {
			super(price, weight, protectionclass);
			this.cloth = cloth;
			this.size = size;
		}

		public ProtectionEqupment getProtectionEqupment() {
			return ProtectionEqupment;
		}

		public void setProtectionEqupment(ProtectionEqupment ProtectionEqupment) {
			this.ProtectionEqupment = ProtectionEqupment;
		}

		public String getCloth() {
			return cloth;
		}

		public void setCloth(String cloth) {
			this.cloth = cloth;
		}

		public String getSize() {
			return size;
		}

		public void setSize(String size) {
			this.size = size;
		}
	}


