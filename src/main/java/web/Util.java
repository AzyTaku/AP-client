/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package web;


import appack.Customer;
import appack.User;
import java.io.IOException;
import java.util.List;
import java.util.UUID;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author azlan
 */
public class Util {
    public static List<Customer> getCustomers() {        
        return Proxy.getInstance().getCustomers();
    }

    public static List<User> getUsers() {        
        return Proxy.getInstance().getUsers();
    }

    public static Customer authenticate(HttpServletRequest request, HttpServletResponse response, HttpSession session) 
            throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Customer authenticatedUser = Util.authenticate(username, password);
        boolean authenticated = authenticatedUser != null;

        if (!authenticated) {
             // If username and password are incorrect/invalid
            if (request.getCookies() != null) {
                for (Cookie cookie : request.getCookies()) {
                    if (cookie.getName().equals("session-id")) {
                        authenticatedUser = (Customer) session.getAttribute(cookie.getValue());
                        authenticated = authenticatedUser != null;
                        break;
                    }
                }  
            }
            if (!authenticated) {
                response.sendRedirect("404.jsp"); 
            }
        } else {
            // If username and password are correct
            String sessionId = UUID.randomUUID().toString().toUpperCase().replace("-", ""); 
            session.setAttribute(sessionId, authenticatedUser);
            response.addCookie(new Cookie("session-id", sessionId));
        }
        return authenticatedUser;
    }
    
    public static Customer authenticate(String username, String password) {  
        Customer user = null;
        
        if (username != null && password != null) {
            user = Proxy.getInstance().authenticate(username, password);
            
            if (user.getUsername() == null) {
                user = null;
            }
        }
        return user;
    }
}
