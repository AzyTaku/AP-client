/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package web;

import appack.APservice;
import appack.APservice_Service;

/**
 *
 * @author azlan
 */
public class Proxy {
    private static APservice instance = null;

    private Proxy() {
    }

    public static APservice getInstance() {
        if (instance == null) {
            APservice_Service service = new APservice_Service();
            instance = service.getAPservicePort();  
        }
        return instance;
    }
}
