package c4l.server.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.log4j.Logger;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import c4l.server.main.*;

@Path("/get")
@Api(value = "/get")
public class getValues {
	//private static Logger logger = Logger.getLogger(getValues.class);

	@GET
	@Path("/allValues")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "get Current values From the Server Dashboard")
	@ApiResponses(value = { @ApiResponse(code = 500, message = "    ") }) // TODO Error Message
	public static Response geAllValues() {
//		logger.debug("get Values");
		try {
		return Response.status(200).entity(Values.getJSON().toString()).build();
		}catch (Exception e) {
//			logger.error("Fail to build Json of Values ", e);
			return Response.serverError().build();
		}
	}

}
