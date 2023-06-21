package ca.usherbrooke.gegi.server.persistence;
import java.util.List;

import ca.usherbrooke.gegi.server.business.*;
//import org.apache.ibatis.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
//import org.apache.ibatis.annotations.Param;

/**
 * class for the mapping of the SQL request made in the XML file
 */
@Mapper
public interface MessageMapper {
    List<Cours> selectcours();
    List<EtudiantsTrimestre> selectinfo(@Param("cip") String cip, @Param("trimestre") String trimestre);

    List<Trimestre> selectTrimestre(@Param("cip") String cip);
    List<EtudiantCoteZ> selectCoteZTrimestre(@Param("cip") String cip, @Param("trimestre") String trimestre);

    EtudiantCoteZTotal selectCoteZTotal(@Param("cip") String cip);

    List<etudiantCompetence> selectCompetenceTotal(@Param("cip") String cip, @Param("trimestre") String trimestre);
}
