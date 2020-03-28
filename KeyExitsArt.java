// Artifact for the Roundabout environment (Cartago)

package tools;

import cartago.*;

public class KeyExitsArt extends Artifact {
	
	@OPERATION public void init()  {
        defineObsProperty("quad1", 0);
        defineObsProperty("quad2", 0);
        defineObsProperty("quad3", 0);
        defineObsProperty("quad4", 0);
	}           
  	
	@OPERATION void inc(int quad1, int quad2, int quad3, int quad4){
        getObsProperty("quad1").updateValue(getObsProperty("quad1").intValue()+quad1);
        getObsProperty("quad2").updateValue(getObsProperty("quad2").intValue()+quad2);
        getObsProperty("quad3").updateValue(getObsProperty("quad3").intValue()+quad3);
        getObsProperty("quad4").updateValue(getObsProperty("quad4").intValue()+quad4);
	}
 }
