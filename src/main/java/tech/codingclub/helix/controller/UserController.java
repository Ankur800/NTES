package tech.codingclub.helix.controller;

import org.jooq.Condition;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.*;
import tech.codingclub.helix.fetcher.LocationFetcher;
import tech.codingclub.helix.fetcher.NewsFetcher;
import tech.codingclub.helix.fetcher.QueryFetcher;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.util.logging.Logger;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    private static Logger logger = Logger.getLogger(String.valueOf(UserController.class));

    @RequestMapping(method = RequestMethod.GET, value = "/welcome")
    public String welcome(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) throws Exception {
        User user = ControllerUtils.getCurrentMember(request);

        //access only when he is logged in!
        modelMap.addAttribute("NAME", user);

        // adding location to model map
        LocationFetcher locationFetcher = new LocationFetcher();
        Location location = locationFetcher.fetchLocation();

        modelMap.addAttribute("LOCATION", location);

        // adding time-day-date to model-map
        Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
        Date date = calendar.getTime();
        int day = calendar.get(Calendar.DATE);
        int month = calendar.get(Calendar.MONTH) + 1;
        String temp  = date.toString();
        String[] forDay = temp.split(" ");
        String currentDay = forDay[0] + " ";
        currentDay += day + "/";
        currentDay += month;

        modelMap.addAttribute("TIME", currentDay);

        // adding recent news on welcome page
        NewsFetcher newsFetcher = new NewsFetcher();
        List<News> news = newsFetcher.fetchRecentNews();

        modelMap.addAttribute("NEWS", news);


        return "welcome";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/train_between_stations")
    public String trainBetweenStations(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "trainBetweenStations";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/query")
    public
    @ResponseBody
    String findTrains(@RequestBody Journey journey, HttpServletRequest request, HttpServletResponse response) throws Exception {

        User user = ControllerUtils.getCurrentMember(request);

        String source = journey.source;
        String destination = journey.destination;

        String[] tempSource = source.split("-");
        String[] tempDestination = destination.split("-");

        user.from = tempSource[1];
        user.to = tempDestination[1];

        Condition condition = tech.codingclub.helix.tables.User.USER.ID.eq(user.id);
        new GenericDB<String>().updateColumn(tech.codingclub.helix.tables.User.USER.FROM, user.from, tech.codingclub.helix.tables.User.USER, condition);
        new GenericDB<String>().updateColumn(tech.codingclub.helix.tables.User.USER.TO, user.to, tech.codingclub.helix.tables.User.USER, condition);

        return "Success";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/results")
    public String results(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) throws Exception {
        User user = ControllerUtils.getCurrentMember(request);

        QueryFetcher queryFetcher = new QueryFetcher(user.from, user.to);
        List<Train> trains = queryFetcher.fetchAllTrains();

        //access only when he is logged in!
        modelMap.addAttribute("TRAINS", trains);

        return "trainsTable";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/live_station")
    public String liveStation(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "liveStation";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/live_station")
    public
    @ResponseBody
    String liveStation(@RequestBody Journey journey, HttpServletRequest request, HttpServletResponse response) throws Exception {

        User user = ControllerUtils.getCurrentMember(request);

        String source = journey.source;
        String destination = journey.destination;

        String[] tempSource = source.split("-");

        user.live_station = tempSource[1];
        if(destination.equals("")){
            user.live_goingTo = "NULL";
        } else {
            String[] tempDestination = destination.split("-");
            user.live_goingTo = tempDestination[1];
        }

        Condition condition = tech.codingclub.helix.tables.User.USER.ID.eq(user.id);
        new GenericDB<String>().updateColumn(tech.codingclub.helix.tables.User.USER.LIVE_STATION, user.live_station, tech.codingclub.helix.tables.User.USER, condition);
        new GenericDB<String>().updateColumn(tech.codingclub.helix.tables.User.USER.LIVE_GOINGTO, user.live_goingTo, tech.codingclub.helix.tables.User.USER, condition);

        return "Success";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/results_live_station")
    public String resultsForLiveStation(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) throws Exception {
        User user = ControllerUtils.getCurrentMember(request);

        QueryFetcher queryFetcher = new QueryFetcher(user.live_station, user.live_goingTo);
        List<Train> trains = queryFetcher.getLiveStation();

        //access only when he is logged in!
        modelMap.addAttribute("TRAINS", trains);

        return "trainsTable-liveStation";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/change_password")
    public
    @ResponseBody
    String changePassword(@RequestBody String password, HttpServletRequest request, HttpServletResponse response) throws Exception {

        User user = ControllerUtils.getCurrentMember(request);

        user.password = password;

        Condition condition = tech.codingclub.helix.tables.User.USER.ID.eq(user.id);
        new GenericDB<String>().updateColumn(tech.codingclub.helix.tables.User.USER.PASSWORD, user.password, tech.codingclub.helix.tables.User.USER, condition);

        return "Password Updated Successfully!";
    }
}