package tech.codingclub.helix.fetcher;

import tech.codingclub.helix.entity.Train;
import tech.codingclub.helix.global.HttpURLConnectionExample;

import java.util.ArrayList;

public class QueryFetcher {

    public String source;
    public String destination;

    public QueryFetcher() {

    }

    public QueryFetcher(String source, String destination) {
        this.source = source;
        this.destination = destination;
    }

    public ArrayList<Train> getLiveStation() throws Exception {
        ArrayList<Train> trains =  new ArrayList<Train>();

        String link = "https://enquiry.indianrail.gov.in/ntes/NTES?action=getTrainsViaStn&viaStn="+ source +"&toStn=" + destination +"&withinHrs=4&trainType=ALL";

        String responseHTML = HttpURLConnectionExample.sendGet(link);

        String[] results = responseHTML.split("trainNo:\"");

        int state = 0;

        for(String result : results){

            Train train = new Train();

            state++;
            if(state == 1)
                continue;
            else{

                train.trainNo = result.substring(0, 5);

                String[] splitAfterNo = result.split("startDate:\"");
                int temp = splitAfterNo[1].indexOf("\"");
                train.startDate = splitAfterNo[1].substring(0, temp);

                String[] splitAfterStartDate = result.split("trainName:\"");
                temp = splitAfterStartDate[1].indexOf("\"");
                train.trainName = splitAfterStartDate[1].substring(0, temp);

                String[] splitAfterName = splitAfterNo[1].split("trainSrc:\"");
                temp = splitAfterName[1].indexOf("\"");
                train.fromStationCode = splitAfterName[1].substring(0, temp);

                String[] splitAfterFromCode = splitAfterName[1].split("trainDstn:\"");
                temp = splitAfterFromCode[1].indexOf("\"");
                train.toStationCode = splitAfterFromCode[1].substring(0, temp);

                String[] splitAfterToStationCode = splitAfterFromCode[1].split("actArr:\"");
                temp = splitAfterToStationCode[1].indexOf("\"");
                train.actualArrival = splitAfterToStationCode[1].substring(0, temp);

                String[] splitAfterActualArrival = splitAfterToStationCode[1].split("delayArr:\"");
                temp = splitAfterActualArrival[1].indexOf("\"");
                train.delayedArrival = splitAfterActualArrival[1].substring(0, temp);

                String[] splitAfterDelayedArrival = splitAfterActualArrival[1].split("actDep:\"");
                temp = splitAfterDelayedArrival[1].indexOf("\"");
                train.actualDeparture = splitAfterDelayedArrival[1].substring(0, temp);

                String[] splitAfterActualDeparture = splitAfterActualArrival[1].split("delayDep:\"");
                temp = splitAfterActualDeparture[1].indexOf("\"");
                train.delayedDeparture = splitAfterActualDeparture[1].substring(0, temp);

                String[] splitAfterDelayedDeparture = splitAfterActualDeparture[1].split("trainType:\"");
                temp = splitAfterDelayedDeparture[1].indexOf("\"");
                String tempType = splitAfterDelayedDeparture[1].substring(0, temp);

                if(tempType.equals("MEX")){
                    train.trainType = "MAIL EXP";
                } else if(tempType.equals("MSPC")){
                    train.trainType = "MAIL EXP SPL";
                } else if(tempType.equals("SUF")){
                    train.trainType = "SUPERFAST";
                } else if(tempType.equals("RAJ")){
                    train.trainType = "RAJDHANI";
                } else if(tempType.equals("PAS")){
                    train.trainType = "PASSANGER";
                } else if(tempType.equals("DRNT")){
                    train.trainType = "DURONTO";
                } else if(tempType.equals("GBR")){
                    train.trainType = "GARIB RATH";
                } else if(tempType.equals("PEXP")){
                    train.trainType = "PARCEL EXPRESS";
                } else if(tempType.equals("SHT")){
                    train.trainType = "SHATABDI";
                } else if(tempType.equals("T18")){
                    train.trainType = "TRAIN 18";
                } else {
                    train.trainType = tempType;
                }

                String[] splitAfterType = splitAfterDelayedDeparture[1].split("pfNo:\"");
                temp = splitAfterType[1].indexOf("\"");
                String tempPlatfromNo = splitAfterType[1].substring(0, temp);
                if(tempPlatfromNo.equals("0")){
                    train.platformNo = "-";
                } else{
                    train.platformNo = tempPlatfromNo;
                }

                trains.add(train);
            }
        }

        return trains;
    }

    public ArrayList<Train> fetchAllTrains() throws Exception {

        ArrayList<Train> trains = new ArrayList<Train>();

        String link = "https://enquiry.indianrail.gov.in/ntes/NTES?action=getTrnBwStns&stn1=" + source +"&stn2=" + destination +"&trainType=ALL";

        String responseHTML = HttpURLConnectionExample.sendGet(link);

        String[] results = responseHTML.split("trainNo: \"");

        int state = 0;

        for(String result : results){
            Train train = new Train();

            state++;
            if(state == 1)
                continue;
            else{

                train.trainNo = result.substring(0, 5);

                String[] splitAfterNo = result.split("trainName: \"");
                int temp = splitAfterNo[1].indexOf("\"");
                train.trainName = splitAfterNo[1].substring(0, temp);

                String[] splitAfterName = splitAfterNo[1].split("runsFromStn: \"");
                temp = splitAfterName[1].indexOf("\"");
                train.runningType = splitAfterName[1].substring(0, temp);

                String[] splitAfterType = splitAfterName[1].split("srcCode: \"");
                temp = splitAfterType[1].indexOf("\"");
                train.sourceCode = splitAfterType[1].substring(0, temp);

                String[] splitAfterSource = splitAfterType[1].split("dstnCode: \"");
                temp = splitAfterSource[1].indexOf("\"");
                train.destinationCode = splitAfterSource[1].substring(0, temp);

                String[] splitAfterDestination = splitAfterSource[1].split("fromStnCode: \"");
                temp = splitAfterDestination[1].indexOf("\"");
                train.fromStationCode = splitAfterDestination[1].substring(0, temp);

                String[] splitAfterFromStationCode = splitAfterDestination[1].split("toStnCode: \"");
                temp = splitAfterFromStationCode[1].indexOf("\"");
                train.toStationCode = splitAfterFromStationCode[1].substring(0, temp);

                String[] splitAfterToStationCode = splitAfterFromStationCode[1].split("depAtFromStn: \"");
                temp = splitAfterToStationCode[1].indexOf("\"");
                train.departureTime = splitAfterToStationCode[1].substring(0, temp);

                String[] splitAfterDepartureTime = splitAfterDestination[1].split("arrAtToStn: \"");
                temp = splitAfterDepartureTime[1].indexOf("\"");
                train.arrivalTime = splitAfterDepartureTime[1].substring(0, temp);

                String[] splitAfterArrivalTime = splitAfterDepartureTime[1].split("trainType: \"");
                temp = splitAfterArrivalTime[1].indexOf("\"");
                String tempType = splitAfterArrivalTime[1].substring(0, temp);

                if(tempType.equals("MEX")){
                    train.trainType = "MAIL EXP";
                } else if(tempType.equals("MSPC")){
                    train.trainType = "MAIL EXP SPL";
                } else if(tempType.equals("SUF")){
                    train.trainType = "SUPERFAST";
                } else if(tempType.equals("RAJ")){
                    train.trainType = "RAJDHANI";
                } else if(tempType.equals("PAS")){
                    train.trainType = "PASSANGER";
                } else if(tempType.equals("DRNT")){
                    train.trainType = "DURONTO";
                } else if(tempType.equals("GBR")){
                    train.trainType = "GARIB RATH";
                } else if(tempType.equals("PEXP")){
                    train.trainType = "PARCEL EXPRESS";
                } else if(tempType.equals("SHT")){
                    train.trainType = "SHATABDI";
                } else if(tempType.equals("T18")){
                    train.trainType = "TRAIN 18";
                } else {
                    train.trainType = tempType;
                }

                trains.add(train);
            }
        }

        return trains;
    }

    /*public static void main(String[] args) throws Exception {
        QueryFetcher queryFetcher = new QueryFetcher("NDLS", "CNB");
        ArrayList<Train> trains = queryFetcher.getLiveStation();
    }*/

}
