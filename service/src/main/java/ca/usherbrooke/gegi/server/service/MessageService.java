//package ca.usherbrooke.gegi.server.service;
//import ca.usherbrooke.gegi.server.business.Cours;
//import ca.usherbrooke.gegi.server.business.Person;
//import ca.usherbrooke.gegi.server.persistence.MessageMapper;
//import org.jsoup.parser.Parser;
//
//import javax.inject.Inject;
//import javax.ws.rs.*;
//import javax.ws.rs.core.MediaType;
//import java.util.List;
//import java.util.stream.Collectors;
//
//@Path("/api")
//@Produces(MediaType.APPLICATION_JSON)
////@Consumes(MediaType.APPLICATION_JSON)
//public class MessageService {
//    @Inject
//    MessageMapper messageMapper;
//
//    @GET
//    @Path("getCours")
//    public Cours getCours() {
//        Cours cours = messageMapper.selectcours();
//        return cours;
//    }
//
////    public static Person unescapeEntities(Person person) {
////        person.description = Parser.unescapeEntities(person.description, true);
////        return person;
////    }
//
//}
