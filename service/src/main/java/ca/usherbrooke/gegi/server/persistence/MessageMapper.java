package ca.usherbrooke.gegi.server.persistence;
import java.util.List;
import ca.usherbrooke.gegi.server.business.Cours;
//import org.apache.ibatis.*;
import ca.usherbrooke.gegi.server.business.EtudiantsTrimestre;
import ca.usherbrooke.gegi.server.business.Person;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
//import org.apache.ibatis.annotations.Param;

@Mapper
public interface MessageMapper {
    List<Cours> selectcours();
    List<EtudiantsTrimestre> selectinfo(@Param("cip") String cip, @Param("trimestre") String trimestre);
}
