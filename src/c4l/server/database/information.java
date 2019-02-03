package c4l.server.database;
import c4l.server.database.*;

import java.util.HashMap;
import java.util.Set;

import org.json.*;

//import com.sun.corba.se.impl.oa.poa.ActiveObjectMap.Key;
//import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

public class information {
	
	public static int adrresen = 512;
	public static int geraete = 32;
	public static String effectSice = "0";
	public static String effectSpeed = "0";
	public static String scenenID = "1"; // initzalisirungs wert fürs Hochfahren damit immer eine Scenen zurück gegebn wird
	public static String caseID = "1";
	public static String effectID = "0"; // Initzalisirt das kein button gedrückt ist
	public static String addresValue[] = new String[adrresen+1]; // 512 adresse
	
	private static String geraeteValue[] = new String[geraete]; // 32 Geräte
	private static Boolean geraeteUse[] = new Boolean[geraete]; 
	 
//	public String 
	
	public information(){
		
	}	
	public static void setEffectID(String id){
		effectID = id;
	}
	
//	public static string test 
	
	public static void setScenenID(String scenenID){
		information.scenenID = scenenID;
	}
	
	public static void setSice(String sice){
		information.effectSice = sice;
	}
	
	public static void setSpeed(String speed){
		information.effectSpeed = speed;
	}
	
	public static void setGeraet(String Geraet){
		try{
		if(geraeteUse[Integer.valueOf(geraete)]){
			geraeteUse[Integer.valueOf(geraete)] = false;
		}else{
			geraeteUse[Integer.valueOf(geraete)] = true;
		}
		}catch (Exception e) {
			geraeteUse[Integer.valueOf(geraete)] = true;
		}
	}
	
	// weil es mit einer stelle zuviel übergeben wird
	public static void setAdrresValue(String adress, String value){
		addresValue[ Integer.parseInt(adress)-1] =  value;
	}
	
	public static void getGeraeteUse(){
		String gU ="";
		for(int i=0 ; i <= geraeteUse.length; i++){
			if(geraeteUse[i]){
				gU = gU + i+";";
			}
		}
	}
	
	public static String getEffectID(){
		return information.effectID;
	}
	
	public static String getScenenID(){
		return information.scenenID;
	}
	
	private static void buildGeraeteValues(){
		int p = 0;
		for ( int i = 0; i <= adrresen-16; i+=16 ) {
			String values = "";
			
			for (int y = i; y <i+16;y++){
				values = values+addresValue[y]+";";
				if(i==0){
					p = 0;
				}else{
					p = i/16;
				}
			}
			geraeteValue[p] = values;
		}
			
	}
	
	private static String[] clearAdrresValues(String[] addresValue){
		System.out.println(addresValue[1]);
		String a;
		for(int i = 0; i<= addresValue.length;i++){
			a = addresValue[i];
			if(a == null){
				addresValue[i]="0";
			}
		}
		return addresValue;
	}
	
	public static String getinfoJSON(){
		//addresValue = clearAdrresValues(addresValue);
		buildGeraeteValues();
		JSONObject answer = new JSONObject();
		answer.put("scenenID", scenenID);
        answer.put("addresValue", addresValue);
        answer.put("caseID", caseID);
        answer.put("geraeteValue", geraeteValue);
        answer.put("effectSize", effectSice);
        answer.put("effectSpeed", effectSpeed);
		return answer.toString();
	}

}
