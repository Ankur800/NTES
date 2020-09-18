package tech.codingclub.helix.entity;

public class Journey {

    public String source;
    public String destination;

    public Journey() {

    }

    public Journey(String source, String destination) {
        this.source = source;
        this.destination = destination;
    }

    public String getSource() {
        return source;
    }

    public String getDestination() {
        return destination;
    }

}
