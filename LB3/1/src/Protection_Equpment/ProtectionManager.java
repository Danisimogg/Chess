package Protection_Equpment;

import Protection_Equpments.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class ProtectionManager {

	private List<ProtectionEqupment> protectionEqupment;

	public ProtectionManager() {
	}

	public ProtectionManager(List<ProtectionEqupment> protectionEqupment) {
		this.protectionEqupment = protectionEqupment;
	}

	public List<ProtectionManager> sortByPrice(boolean descending) {       
			(ProtectionManager obj1, ProtectionManager obj2) -> 
			java.lang.Double.compare((obj1.getPrice()),(obj));
		List<ProtectionManager> GardenPlantsList = ProtectionManager;
		GardenPlantsList.sort(comparator);
		if (descending) {
			Collections.reverse(GardenPlantsList);
		}
		return GardenPlantsList;
	}
	
}
