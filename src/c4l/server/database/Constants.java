package c4l.server.database;

/*
 * Constants for the whole project
 */

public class Constants {
	//Ports and adrres schould be all in the Propertis
	/** Port, where Arduino of Hardware-Controller is connected */
	public final static String ARDUINO_PORT = "COM6";
	
	/** IP from the server **/
	public final static String SERVER_IP = "127.0.0.1";
    /** Port from the server **/
	public final static String SERVER_Port = "8080";
	/** complett adrres from the server**/
	public final static String SERVER_ADDRESS = SERVER_IP+"::"+SERVER_Port;
    					
			
	//General
	/** Number of channels a device has. */
	public final static int DEVICE_CHANNELS = 16;
	/** Number of full-featured devices */
	public final static int DYNAMIC_DEVICES = 30;
	/** Number of devices with reduced features */
	public final static int STATIC_DEVICES = 2; //QUESTION Ist das sinnvoll, dass noch als Device zu handhaben? W�rde am Anfang einfach stumpf die Werte durchschleusen 
												// Habs nur einfach erst mal trenne wollen und es mehr oder weniger so auch dockumentiern
	/** Total number of Devices */
	public final static int ALL_DEVICES = DYNAMIC_DEVICES + STATIC_DEVICES;
	
	public final static int[] PERMUTATION = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
	
	// Input constants
	/** Tolerance of variation on the hardware-faders, that are interpreted as side-effects, rather than as inputs. */
	public final static int FADER_TOLERANCE = 3;
	/** Correction factor to change from hardware range (0-1023) to DMX-Range (0-255) */
	public final static int CORRECTIONDIVISOR = 4;
	/** Range of the rotary value. */
	public final static int ROTARY_RANGE = 1024; //TODO maybe adjust value
	
	
	// Output constants
	/** Last Channel for Enttec-Output **/
	public final static int  MAXCHANNEL = 511;
	/** First Channel for Enttec-Output */
	public final static int  MINCHANNEL = 0;
	/** Maximum output-value for DMX-protocol */
	public final static int  MAXVALUE = 255;
	/** Minimum output-value for DMX-protocol */
	public final static int  MINVALUE = 0;

	
	//Effects constants
	/** Range of the state of an effect. Loopover-point for it. */
	public final static int EFFECTRANGE = 65536;
	/** length of one interval for random effects */
	public final static int EFFECTSTEP = 16384;
	/** Time in Milliseconds between Effect-Ticks */
	public final static int EFFECTTICKMILLIS = 25;
}
