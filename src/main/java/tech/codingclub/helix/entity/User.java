package tech.codingclub.helix.entity;

public class User extends UserBase {

    public String name;
    public String email;
    public String password;
    public String token;
    public String from;
    public String to;
    public String live_station;
    public String live_goingTo;

    public String getLive_station() {
        return live_station;
    }

    public String getLive_goingTo() {
        return live_goingTo;
    }

    public String getLiveStation() {
        return live_station;
    }

    public String getFrom() {
        return from;
    }

    public String getTo() {
        return to;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public Long getId() {
        return id;
    }

    public String getToken() {
        return token;
    }

    public User(){

    }

    public User(String name, String email, String password, Long id, String token) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.id = id;
        this.token = token;
    }

}
