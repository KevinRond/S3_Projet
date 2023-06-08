package ca.usherbrooke.fgen.api.service;

import ca.usherbrooke.fgen.api.business.Message;
import ca.usherbrooke.fgen.api.persistence.MessageMapper;
import org.jsoup.parser.Parser;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Path("/api")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class MessageService {


    @Inject
    MessageMapper messageMapper;


//	@GET
//	@Path("getmessages/{trimester}/{profile}/{unit}")
//
//	public List<Message> getMessages(
//			@PathParam("trimester") String trimesterId,
//			@PathParam("profile") String profileId,
//			@PathParam("unit") String unit
//	) {
//		List<Message> messages = messageMapper.select(trimesterId, profileId, unit, null);
//		return messages;
//	}


//    @GET
//    @Path("getallmessages")
//    public List<Message> getAllMessages(
//    ) {
//        List<Message> messages = messageMapper.allMessages();
//        return this.unescapeEntities(messages);
//    }

    @GET
    @Path("getmessage/{nom_cours}")
    public Message getMessage(
            @PathParam("nom_cours") String nom_cours
    ) {
        Message message = messageMapper.selectOne(nom_cours);
        return message;
    }

    @DELETE
    @Path("deletemessage/{id}")
    public void deleteMessage(
            @PathParam("id") Integer id
    ) {
        messageMapper.deleteOne(id);
        return;
    }


    @PUT
    @Path("putmessage")
    //@RolesAllowed({Roles.TEACHER})
    public void insertMessage(Message message) {
        messageMapper.insertMessage(message);
    }

    @GET
    @Path("getnewid")
    //@RolesAllowed({Roles.TEACHER})
    public Integer getnewid() {
        Integer id = messageMapper.getNewId();
        return id;
    }


    public List<Message> unescapeEntities(List<Message> messages) {
        return new ArrayList<>(messages);
    }
}
