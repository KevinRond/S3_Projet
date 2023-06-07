package ca.usherbrooke.gegi.server.persistence;
import ca.usherbrooke.gegi.server.business.Cours;
//import org.apache.ibatis.*;
import ca.usherbrooke.gegi.server.business.Person;
import org.apache.ibatis.annotations.Mapper;
//import org.apache.ibatis.annotations.Param;

@Mapper
public interface MessageMapper {
    Cours selectcours();
}
