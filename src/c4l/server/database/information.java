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

	private static byte effectSice = 0;
	private static byte effectSpeed = 0;
	private static ArrayList<Integer> scenenID = new ArrayList<>(); // damit mehrer scenen Paralel laufen könne
	private static Integer caseID;
	private static Integer effectID; // Initzalisirt das kein button gedrückt ist
	// public static String addresValue[] = new String[adrresen+1]; // 512 adresse
	private static byte faderValue[] = new byte[Constants.DEVICE_CHANNELS];
	private static Boolean geraeteUse[] = new Boolean[Constants.DYNAMIC_DEVICES];

	// public String

	public information() {

	}

	public static void setEffectID(Integer id) {
		effectID = id;
	}

	// public static string test

	public static void addScenenID(Integer scenenID) {
		information.scenenID.add(scenenID);
	}

	public static void dropScenenID(Integer scenenID) {
		information.scenenID.remove(scenenID);
	}

	public static void setSice(byte sice) {
		information.effectSice = sice;
	}

	public static void setSpeed(byte speed) {
		information.effectSpeed = speed;
	}

	public static void setGeraet(Integer Geraet) {
		try {
			if (geraeteUse[Geraet]) {
				geraeteUse[Geraet] = false;
			} else {
				geraeteUse[Geraet] = true;
			}
		} catch (Exception e) {
			geraeteUse[Geraet] = true;
		}
	}

	public static void setFader(byte fader, byte value) {
		information.faderValue[fader] = value;

	}

	/*
	 * // weil es mit einer stelle zuviel übergeben wird public static void
	 * setAdrresValue(String adress, String value){ addresValue[
	 * Integer.parseInt(adress)-1] = value; }
	 */

	public static String getGeraeteUse() {
		String gU = "";
		for (int i = 0; i <= geraeteUse.length; i++) {
			if (geraeteUse[i]) {
				gU = gU + i + ";";
			}
		}
		return gU;
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

	public static JSONArray getFaderValues() {
		JSONArray array = new JSONArray();
		for (byte i : faderValue)
			array.put(i, faderValue[i]);

		return array;

	}

	public static String getinfoJSON() {
		// addresValue = clearAdrresValues(addresValue);
		JSONObject answer = new JSONObject();
		answer.put("scenenID", getScenenIDs());
		answer.put("caseID", caseID);
		answer.put("effectSize", effectSice);
		answer.put("effectSpeed", effectSpeed); // könnte noch ne Logi rein das nur geändert values rein kommen
		answer.put("fader", getFaderValues());
		return answer.toString();
	}

}
