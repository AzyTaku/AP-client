
package appack;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.8
 * Generated source version: 2.2
 * 
 */
@WebService(name = "APservice", targetNamespace = "http://APpack/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface APservice {


    /**
     * 
     * @param user
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "updateUser", targetNamespace = "http://APpack/", className = "appack.UpdateUser")
    @ResponseWrapper(localName = "updateUserResponse", targetNamespace = "http://APpack/", className = "appack.UpdateUserResponse")
    @Action(input = "http://APpack/APservice/updateUserRequest", output = "http://APpack/APservice/updateUserResponse")
    public boolean updateUser(
        @WebParam(name = "user", targetNamespace = "")
        User user);

    /**
     * 
     * @return
     *     returns java.util.List<appack.Customer>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getCustomers", targetNamespace = "http://APpack/", className = "appack.GetCustomers")
    @ResponseWrapper(localName = "getCustomersResponse", targetNamespace = "http://APpack/", className = "appack.GetCustomersResponse")
    @Action(input = "http://APpack/APservice/getCustomersRequest", output = "http://APpack/APservice/getCustomersResponse")
    public List<Customer> getCustomers();

    /**
     * 
     * @param name
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "hello", targetNamespace = "http://APpack/", className = "appack.Hello")
    @ResponseWrapper(localName = "helloResponse", targetNamespace = "http://APpack/", className = "appack.HelloResponse")
    @Action(input = "http://APpack/APservice/helloRequest", output = "http://APpack/APservice/helloResponse")
    public String hello(
        @WebParam(name = "name", targetNamespace = "")
        String name);

    /**
     * 
     * @param inputUsername
     * @param inputPassword
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "adminBool", targetNamespace = "http://APpack/", className = "appack.AdminBool")
    @ResponseWrapper(localName = "adminBoolResponse", targetNamespace = "http://APpack/", className = "appack.AdminBoolResponse")
    @Action(input = "http://APpack/APservice/adminBoolRequest", output = "http://APpack/APservice/adminBoolResponse")
    public boolean adminBool(
        @WebParam(name = "InputUsername", targetNamespace = "")
        String inputUsername,
        @WebParam(name = "InputPassword", targetNamespace = "")
        String inputPassword);

    /**
     * 
     * @param user
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "addUser", targetNamespace = "http://APpack/", className = "appack.AddUser")
    @ResponseWrapper(localName = "addUserResponse", targetNamespace = "http://APpack/", className = "appack.AddUserResponse")
    @Action(input = "http://APpack/APservice/addUserRequest", output = "http://APpack/APservice/addUserResponse")
    public boolean addUser(
        @WebParam(name = "user", targetNamespace = "")
        User user);

    /**
     * 
     * @param id
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "deleteUser", targetNamespace = "http://APpack/", className = "appack.DeleteUser")
    @ResponseWrapper(localName = "deleteUserResponse", targetNamespace = "http://APpack/", className = "appack.DeleteUserResponse")
    @Action(input = "http://APpack/APservice/deleteUserRequest", output = "http://APpack/APservice/deleteUserResponse")
    public boolean deleteUser(
        @WebParam(name = "id", targetNamespace = "")
        int id);

    /**
     * 
     * @param inputUsername
     * @param inputPassword
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "loginUser", targetNamespace = "http://APpack/", className = "appack.LoginUser")
    @ResponseWrapper(localName = "loginUserResponse", targetNamespace = "http://APpack/", className = "appack.LoginUserResponse")
    @Action(input = "http://APpack/APservice/loginUserRequest", output = "http://APpack/APservice/loginUserResponse")
    public boolean loginUser(
        @WebParam(name = "InputUsername", targetNamespace = "")
        String inputUsername,
        @WebParam(name = "InputPassword", targetNamespace = "")
        String inputPassword);

    /**
     * 
     * @param id
     * @return
     *     returns appack.Customer
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getCustomer", targetNamespace = "http://APpack/", className = "appack.GetCustomer")
    @ResponseWrapper(localName = "getCustomerResponse", targetNamespace = "http://APpack/", className = "appack.GetCustomerResponse")
    @Action(input = "http://APpack/APservice/getCustomerRequest", output = "http://APpack/APservice/getCustomerResponse")
    public Customer getCustomer(
        @WebParam(name = "id", targetNamespace = "")
        int id);

    /**
     * 
     * @return
     *     returns java.util.List<appack.User>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getUsers", targetNamespace = "http://APpack/", className = "appack.GetUsers")
    @ResponseWrapper(localName = "getUsersResponse", targetNamespace = "http://APpack/", className = "appack.GetUsersResponse")
    @Action(input = "http://APpack/APservice/getUsersRequest", output = "http://APpack/APservice/getUsersResponse")
    public List<User> getUsers();

    /**
     * 
     * @param password
     * @param username
     * @return
     *     returns appack.User
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "authenticate", targetNamespace = "http://APpack/", className = "appack.Authenticate")
    @ResponseWrapper(localName = "authenticateResponse", targetNamespace = "http://APpack/", className = "appack.AuthenticateResponse")
    @Action(input = "http://APpack/APservice/authenticateRequest", output = "http://APpack/APservice/authenticateResponse")
    public User authenticate(
        @WebParam(name = "username", targetNamespace = "")
        String username,
        @WebParam(name = "password", targetNamespace = "")
        String password);

    /**
     * 
     * @param inputUsername
     * @param inputPassword
     * @return
     *     returns boolean
     */
    @WebMethod(operationName = "SalesBool")
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "SalesBool", targetNamespace = "http://APpack/", className = "appack.SalesBool")
    @ResponseWrapper(localName = "SalesBoolResponse", targetNamespace = "http://APpack/", className = "appack.SalesBoolResponse")
    @Action(input = "http://APpack/APservice/SalesBoolRequest", output = "http://APpack/APservice/SalesBoolResponse")
    public boolean salesBool(
        @WebParam(name = "InputUsername", targetNamespace = "")
        String inputUsername,
        @WebParam(name = "InputPassword", targetNamespace = "")
        String inputPassword);

    /**
     * 
     * @param name
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "notHello", targetNamespace = "http://APpack/", className = "appack.NotHello")
    @ResponseWrapper(localName = "notHelloResponse", targetNamespace = "http://APpack/", className = "appack.NotHelloResponse")
    @Action(input = "http://APpack/APservice/notHelloRequest", output = "http://APpack/APservice/notHelloResponse")
    public String notHello(
        @WebParam(name = "name", targetNamespace = "")
        String name);

}
