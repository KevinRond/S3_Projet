package ca.usherbrooke.fgen.api.persistence;

import ca.usherbrooke.fgen.api.business.Message;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface MessageMapper {
    List<Message> select(String trimester_id, String nom_cours, String nom_evaluation, double comp1,
                         double ponderation_comp1, double comp2, double ponderation_comp2, double comp3,
                         double ponderation_comp3, double total);
    Message selectOne(String nom_cours);
    void deleteOne(Integer id);
    List<Message> allMessages();
    void insertMessage(@Param("message") Message message);
    Integer getNewId();
}
