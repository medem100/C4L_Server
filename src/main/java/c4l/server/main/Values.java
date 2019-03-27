package c4l.server.main;

import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

import c4l.server.database.Constants;

public class Values {
	
	private Logger logger = Logger.getRootLogger();
	private static int effectSice = 0;
	private static int effectSpeed = 0;
	private static JSONArray scenenID = new JSONArray(); // so more than one scenen can run paralel
	private static int caseID;
	private static int effectID; // Initzalisirt das kein button gedrückt ist
	private static JSONArray faderValues = new JSONArray(new int[Constants.DEVICE_CHANNELS]);
	private static JSONArray deviceSelected = new JSONArray(new Boolean[Constants.DYNAMIC_DEVICES]);

	// getter setter

	public static void setEffectID(int id) {
		effectID = id;
	}

	public static void addScenenID(int scenenID) {
		Values.scenenID.put(scenenID);
	}

	public static void dropScenenID(int scenenID) {
		Values.scenenID.remove(scenenID);
	}

	public static void setSice(int sice) {
		Values.effectSice = sice;
	}

	public static void setSpeed(int speed) {
		Values.effectSpeed = speed;
	}

	public static void setDevice(int Geraet) {
		try {
			if ((boolean) deviceSelected.get(Geraet)) {
				deviceSelected.put(Geraet, false);
			} else {
				deviceSelected.put(Geraet, true);
			}
		} catch (Exception e) {
			deviceSelected.put(Geraet, true);
		}
	}

	public static void setFader(int fader, int value) {
		Values.faderValues.put(fader, value);

	}

	public static Integer getEffectID() {
		return Values.effectID;
	}

	// geräte fehlen....
	public static String getJSON() {
		// addresValue = clearAdrresValues(addresValue);
		JSONObject answer = new JSONObject();
		answer.put("scenenID", scenenID);
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
