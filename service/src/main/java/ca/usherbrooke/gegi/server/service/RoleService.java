package ca.usherbrooke.gegi.server.service;

import ca.usherbrooke.gegi.server.business.*;

import java.util.List;
import java.util.Map;
import javax.annotation.security.PermitAll;
import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.SecurityContext;

import ca.usherbrooke.gegi.server.persistence.MessageMapper;
import org.eclipse.microprofile.jwt.JsonWebToken;

@Path("/api")
@Produces({"application/json"})
public class RoleService {
    @Context
    SecurityContext securityContext;
    @Inject
    JsonWebToken jwt;

    @Inject
    MessageMapper messageMapper;

    @GET
    @Path("getCours")
    @PermitAll
    public List<Cours> getCours() {
        List<Cours> cours = messageMapper.selectcours();
        return cours;
    }

    @GET
    @Path("selectinfo/{cip}/{trimestre}")
    @PermitAll
    public List<EtudiantsTrimestre> selectinfo(
            @PathParam("cip") String cip,
            @PathParam("trimestre") String trimestre
    ) {
        return messageMapper.selectinfo(cip, trimestre);
    }

    @GET
    @Path("selectTrimestre/{cip}")
    @PermitAll
    public List<Trimestre> selectTrimestre(
            @PathParam("cip") String cip
    ) {
        return messageMapper.selectTrimestre(cip);
    }

    @GET
    @Path("selectCoteZTrimestre/{cip}/{trimestre}")
    @PermitAll
    public List<EtudiantCoteZ> selectCoteZTrimestre(
            @PathParam("cip") String cip,
            @PathParam("trimestre") String trimestre
    ){
        return messageMapper.selectCoteZTrimestre(cip, trimestre);
    }

    @GET
    @Path("selectCoteZTotal/{cip}")
    @PermitAll
    public EtudiantCoteZTotal selectCoteZTotal(
            @PathParam("cip") String cip
    ){
        return messageMapper.selectCoteZTotal(cip);
    }

//        Message message = messageMapper.selectOne(id);
//        return unescapeEntities(message);



//    @GET
//    @Path("/teacher")
//    @RolesAllowed({"enseignant"})
//    public Person teacher() {
//        Person p = new Person();
//        p.cip = this.securityContext.getUserPrincipal().getName();
//        p.last_name = (String)this.jwt.getClaim("family_name");
//        p.first_name = (String)this.jwt.getClaim("given_name");
//        p.email = (String)this.jwt.getClaim("email");
//        Map realmAccess = (Map)this.jwt.getClaim("realm_access");
//        if (realmAccess != null && realmAccess.containsKey("roles")) {
//            p.roles = (List)realmAccess.get("roles");
//        }
//
//        System.out.println(p);
//        return p;
//    }
//
    @GET
    @Path("/student")
    @RolesAllowed({"etudiant"})
    public Person student() {
        Person p = new Person();
        p.cip = this.securityContext.getUserPrincipal().getName();
        p.last_name = (String)this.jwt.getClaim("family_name");
        p.first_name = (String)this.jwt.getClaim("given_name");
        p.email = (String)this.jwt.getClaim("email");
        Map realmAccess = (Map)this.jwt.getClaim("realm_access");
        if (realmAccess != null && realmAccess.containsKey("roles")) {
            p.roles = (List)realmAccess.get("roles");
        }

        System.out.println(p);
        return p;
    }
//
//    @GET
//    @Path("/any")
//    @PermitAll
//    public Person me() {
//        Person p = new Person();
//        p.cip = this.securityContext.getUserPrincipal().getName();
//        p.last_name = (String)this.jwt.getClaim("family_name");
//        p.first_name = (String)this.jwt.getClaim("given_name");
//        p.email = (String)this.jwt.getClaim("email");
//        Map realmAccess = (Map)this.jwt.getClaim("realm_access");
//        if (realmAccess != null && realmAccess.containsKey("roles")) {
//            p.roles = (List)realmAccess.get("roles");
//        }
//
//        System.out.println(p);
//        return p;
//    }
}
