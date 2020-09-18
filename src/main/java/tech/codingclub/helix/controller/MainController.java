package tech.codingclub.helix.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.*;
import tech.codingclub.helix.fetcher.LocationFetcher;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
@RequestMapping("/")
public class MainController extends BaseController {

    private static Logger logger = Logger.getLogger(MainController.class);

    @RequestMapping(method = RequestMethod.GET, value = "/signup")
    public String signup(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "signup";
    }


    @RequestMapping(method = RequestMethod.POST, value = "/signup")
    public
    @ResponseBody
    SignupResponse signUpData(@RequestBody User user, HttpServletRequest request, HttpServletResponse response) {

        Boolean user_created = false;
        String message = "";

        if(GenericDB.getCount(tech.codingclub.helix.tables.User.USER, tech.codingclub.helix.tables.User.USER.EMAIL.eq(user.email)) > 0){
            message += "User already exists for this email !";
        } else {
            new GenericDB<User>().addRow(tech.codingclub.helix.tables.User.USER, user);
            user_created = true;
            message += "User Created !";
        }

        return (new SignupResponse(message, user_created));
    }

    @RequestMapping(method = RequestMethod.GET, value = "/uitest")
    public String uitest(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "uitest";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/handle")
    public
    @ResponseBody
    String handleEncrypt(@RequestBody String data, HttpServletRequest request, HttpServletResponse response) {
        return "ok";
    }
}