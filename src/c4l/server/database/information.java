package c4l.server.database;

import c4l.server.database.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

import org.json.*;
import c4l.server.database.Constants;

//import com.sun.corba.se.impl.oa.poa.ActiveObjectMap.Key;
//import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

public final class information {

	/*
	 * TO DO :
	 * 
	 * Scenen und cases müsseListen werden ... Fader müssen einzeln übergeben werden
	 * 
	 * 
	 */

	private static int effectSice = 0;
	private static int effectSpeed = 0;
	private static ArrayList<Integer> scenenID = new ArrayList<>(); // damit mehrer scenen Paralel laufen könne
	private static int caseID;
	private static int effectID; // Initzalisirt das kein button gedrückt ist
	// public static String addresValue[] = new String[adrresen+1]; // 512 adresse
	private static JSONArray faderValues = new JSONArray(Constants.DEVICE_CHANNELS);
	private static JSONArray deviceSelected = new JSONArray(Constants.DYNAMIC_DEVICES);

	// public String

	public information() {

	}

	public static void setEffectID(int id) {
		effectID = id;
	}

	// public static string test

	public static void addScenenID(int scenenID) {
		information.scenenID.add(scenenID);
	}

	public static void dropScenenID(int scenenID) {
		information.scenenID.remove(scenenID);
	}

	public static void setSice(int sice) {
		information.effectSice = sice;
	}

	public static void setSpeed(int speed) {
		information.effectSpeed = speed;
	}

	public static void setGeraet(int Geraet) {
		try {
			if ((boolean) deviceSelected.get(Geraet)) {
				deviceSelected.put(Geraet,false);
			} else {
				deviceSelected.put(Geraet,true);
			}
		} catch (Exception e) {
			deviceSelected.put(Geraet,true);
		}
	}

	public static void setFader(int fader, int value) {
		information.faderValues.put(fader,value);

	}

	
	public static String getScenenIDs() {
		String SIds = "";
		Iterator<Integer> iterator = scenenID.iterator();
		while (iterator.hasNext()) {
			SIds = SIds + iterator.next() + ";";
		}
		return SIds;
	}

	public static Integer getEffectID() {
		return information.effectID;
	}

	public static ArrayList<Integer> getScenenID() {
		return information.scenenID;
	}


	// geräte fehlen....
	public static String getinfoJSON() {
		// addresValue = clearAdrresValues(addresValue);
		JSONObject answer = new JSONObject();
		answer.put("scenenID", getScenenIDs());
		answer.put("caseID", caseID);
		answer.put("effectSize", effectSice);
		answer.put("effectSpeed", effectSpeed); // könnte noch ne Logi rein das nur geändert values rein kommen
		answer.put("fader", faderValues);
		answer.put("devices", deviceSelected);
		answer.put("devices", deviceSelected);
		answer.put("effect", effectID);
		
		return answer.toString();
	}

}
