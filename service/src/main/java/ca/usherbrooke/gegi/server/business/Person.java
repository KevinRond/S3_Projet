package ca.usherbrooke.gegi.server.business;

import java.util.List;

public class Person {
    public String cip;
    public String last_name;
    public String first_name;
    public String email;
    public List roles;

    public String toString() {
        return "Person{cip='" + this.cip + "', last_name='" + this.last_name + "', first_name='" + this.first_name + "', email='" + this.email + "', roles=" + this.roles + "}";
    }
}