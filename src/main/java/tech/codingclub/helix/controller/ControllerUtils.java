package tech.codingclub.helix.controller;

import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.User;
import tech.codingclub.helix.fetcher.QueryFetcher;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class ControllerUtils {

    public static final String TOKEN_COOKIE = "t";

    public static User getCurrentMember(HttpServletRequest request) {
        User user = new GenericDB<User>().getRow(tech.codingclub.helix.tables.User.USER, User.class, tech.codingclub.helix.tables.User.USER.ID.eq(ControllerUtils.getUserId(request)));
        if (user != null) {
            user.password = null;
        }
        return user;
    }


    public static Long getUserId(HttpServletRequest httpServletRequest) {
        Long id = (Long) httpServletRequest.getSession().getAttribute("I");
        if (id == null) {
            Cookie[] cookies = httpServletRequest.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals(TOKEN_COOKIE)) {
                        User user = new GenericDB<User>().getRow(tech.codingclub.helix.tables.User.USER, User.class, tech.codingclub.helix.tables.User.USER.TOKEN.eq(cookie.getValue()));
                        if (user != null && user.token != null) {
                            setUserSession(httpServletRequest, user);
                            return user.id;
                        }
                    }
                }
            }
        }
        return id;
    }

    public static Boolean isUser(HttpServletRequest httpServletRequest) {
        Boolean temp = (Boolean) httpServletRequest.getSession().getAttribute("I");

        if (temp != null && temp) return true;

        Cookie[] cookies = httpServletRequest.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(TOKEN_COOKIE)) {
                    User user = new GenericDB<User>().getRow(tech.codingclub.helix.tables.User.USER, User.class, tech.codingclub.helix.tables.User.USER.TOKEN.eq(cookie.getValue()));
                    if (user != null && user.token != null) {
                        setUserSession(httpServletRequest, user);
                        return true;
                    }
                }
            }
        }
        return null;
    }

    public static void setUserSession(HttpServletRequest httpServletRequest, User team) {
        httpServletRequest.getSession().setAttribute("I", team.id);
    }
}
