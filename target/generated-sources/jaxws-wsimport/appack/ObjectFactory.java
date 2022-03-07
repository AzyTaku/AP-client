
package appack;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the appack package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _GetUsers_QNAME = new QName("http://APpack/", "getUsers");
    private final static QName _GetCustomersResponse_QNAME = new QName("http://APpack/", "getCustomersResponse");
    private final static QName _LoginUser_QNAME = new QName("http://APpack/", "loginUser");
    private final static QName _AddUserResponse_QNAME = new QName("http://APpack/", "addUserResponse");
    private final static QName _AdminBool_QNAME = new QName("http://APpack/", "adminBool");
    private final static QName _UpdateUserResponse_QNAME = new QName("http://APpack/", "updateUserResponse");
    private final static QName _AdminBoolResponse_QNAME = new QName("http://APpack/", "adminBoolResponse");
    private final static QName _DeleteUserResponse_QNAME = new QName("http://APpack/", "deleteUserResponse");
    private final static QName _GetUsersResponse_QNAME = new QName("http://APpack/", "getUsersResponse");
    private final static QName _DeleteUser_QNAME = new QName("http://APpack/", "deleteUser");
    private final static QName _GetCustomers_QNAME = new QName("http://APpack/", "getCustomers");
    private final static QName _LoginUserResponse_QNAME = new QName("http://APpack/", "loginUserResponse");
    private final static QName _AddUser_QNAME = new QName("http://APpack/", "addUser");
    private final static QName _AuthenticateResponse_QNAME = new QName("http://APpack/", "authenticateResponse");
    private final static QName _GetCustomerResponse_QNAME = new QName("http://APpack/", "getCustomerResponse");
    private final static QName _Authenticate_QNAME = new QName("http://APpack/", "authenticate");
    private final static QName _GetCustomer_QNAME = new QName("http://APpack/", "getCustomer");
    private final static QName _UpdateUser_QNAME = new QName("http://APpack/", "updateUser");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: appack
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetCustomerResponse }
     * 
     */
    public GetCustomerResponse createGetCustomerResponse() {
        return new GetCustomerResponse();
    }

    /**
     * Create an instance of {@link Authenticate }
     * 
     */
    public Authenticate createAuthenticate() {
        return new Authenticate();
    }

    /**
     * Create an instance of {@link GetCustomers }
     * 
     */
    public GetCustomers createGetCustomers() {
        return new GetCustomers();
    }

    /**
     * Create an instance of {@link LoginUserResponse }
     * 
     */
    public LoginUserResponse createLoginUserResponse() {
        return new LoginUserResponse();
    }

    /**
     * Create an instance of {@link AddUser }
     * 
     */
    public AddUser createAddUser() {
        return new AddUser();
    }

    /**
     * Create an instance of {@link AuthenticateResponse }
     * 
     */
    public AuthenticateResponse createAuthenticateResponse() {
        return new AuthenticateResponse();
    }

    /**
     * Create an instance of {@link UpdateUser }
     * 
     */
    public UpdateUser createUpdateUser() {
        return new UpdateUser();
    }

    /**
     * Create an instance of {@link GetCustomer }
     * 
     */
    public GetCustomer createGetCustomer() {
        return new GetCustomer();
    }

    /**
     * Create an instance of {@link GetCustomersResponse }
     * 
     */
    public GetCustomersResponse createGetCustomersResponse() {
        return new GetCustomersResponse();
    }

    /**
     * Create an instance of {@link LoginUser }
     * 
     */
    public LoginUser createLoginUser() {
        return new LoginUser();
    }

    /**
     * Create an instance of {@link GetUsers }
     * 
     */
    public GetUsers createGetUsers() {
        return new GetUsers();
    }

    /**
     * Create an instance of {@link DeleteUser }
     * 
     */
    public DeleteUser createDeleteUser() {
        return new DeleteUser();
    }

    /**
     * Create an instance of {@link AddUserResponse }
     * 
     */
    public AddUserResponse createAddUserResponse() {
        return new AddUserResponse();
    }

    /**
     * Create an instance of {@link AdminBool }
     * 
     */
    public AdminBool createAdminBool() {
        return new AdminBool();
    }

    /**
     * Create an instance of {@link UpdateUserResponse }
     * 
     */
    public UpdateUserResponse createUpdateUserResponse() {
        return new UpdateUserResponse();
    }

    /**
     * Create an instance of {@link AdminBoolResponse }
     * 
     */
    public AdminBoolResponse createAdminBoolResponse() {
        return new AdminBoolResponse();
    }

    /**
     * Create an instance of {@link DeleteUserResponse }
     * 
     */
    public DeleteUserResponse createDeleteUserResponse() {
        return new DeleteUserResponse();
    }

    /**
     * Create an instance of {@link GetUsersResponse }
     * 
     */
    public GetUsersResponse createGetUsersResponse() {
        return new GetUsersResponse();
    }

    /**
     * Create an instance of {@link User }
     * 
     */
    public User createUser() {
        return new User();
    }

    /**
     * Create an instance of {@link Customer }
     * 
     */
    public Customer createCustomer() {
        return new Customer();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetUsers }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "getUsers")
    public JAXBElement<GetUsers> createGetUsers(GetUsers value) {
        return new JAXBElement<GetUsers>(_GetUsers_QNAME, GetUsers.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetCustomersResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "getCustomersResponse")
    public JAXBElement<GetCustomersResponse> createGetCustomersResponse(GetCustomersResponse value) {
        return new JAXBElement<GetCustomersResponse>(_GetCustomersResponse_QNAME, GetCustomersResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginUser }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "loginUser")
    public JAXBElement<LoginUser> createLoginUser(LoginUser value) {
        return new JAXBElement<LoginUser>(_LoginUser_QNAME, LoginUser.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddUserResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "addUserResponse")
    public JAXBElement<AddUserResponse> createAddUserResponse(AddUserResponse value) {
        return new JAXBElement<AddUserResponse>(_AddUserResponse_QNAME, AddUserResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AdminBool }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "adminBool")
    public JAXBElement<AdminBool> createAdminBool(AdminBool value) {
        return new JAXBElement<AdminBool>(_AdminBool_QNAME, AdminBool.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UpdateUserResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "updateUserResponse")
    public JAXBElement<UpdateUserResponse> createUpdateUserResponse(UpdateUserResponse value) {
        return new JAXBElement<UpdateUserResponse>(_UpdateUserResponse_QNAME, UpdateUserResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AdminBoolResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "adminBoolResponse")
    public JAXBElement<AdminBoolResponse> createAdminBoolResponse(AdminBoolResponse value) {
        return new JAXBElement<AdminBoolResponse>(_AdminBoolResponse_QNAME, AdminBoolResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DeleteUserResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "deleteUserResponse")
    public JAXBElement<DeleteUserResponse> createDeleteUserResponse(DeleteUserResponse value) {
        return new JAXBElement<DeleteUserResponse>(_DeleteUserResponse_QNAME, DeleteUserResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetUsersResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "getUsersResponse")
    public JAXBElement<GetUsersResponse> createGetUsersResponse(GetUsersResponse value) {
        return new JAXBElement<GetUsersResponse>(_GetUsersResponse_QNAME, GetUsersResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DeleteUser }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "deleteUser")
    public JAXBElement<DeleteUser> createDeleteUser(DeleteUser value) {
        return new JAXBElement<DeleteUser>(_DeleteUser_QNAME, DeleteUser.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetCustomers }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "getCustomers")
    public JAXBElement<GetCustomers> createGetCustomers(GetCustomers value) {
        return new JAXBElement<GetCustomers>(_GetCustomers_QNAME, GetCustomers.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginUserResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "loginUserResponse")
    public JAXBElement<LoginUserResponse> createLoginUserResponse(LoginUserResponse value) {
        return new JAXBElement<LoginUserResponse>(_LoginUserResponse_QNAME, LoginUserResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddUser }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "addUser")
    public JAXBElement<AddUser> createAddUser(AddUser value) {
        return new JAXBElement<AddUser>(_AddUser_QNAME, AddUser.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AuthenticateResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "authenticateResponse")
    public JAXBElement<AuthenticateResponse> createAuthenticateResponse(AuthenticateResponse value) {
        return new JAXBElement<AuthenticateResponse>(_AuthenticateResponse_QNAME, AuthenticateResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetCustomerResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "getCustomerResponse")
    public JAXBElement<GetCustomerResponse> createGetCustomerResponse(GetCustomerResponse value) {
        return new JAXBElement<GetCustomerResponse>(_GetCustomerResponse_QNAME, GetCustomerResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Authenticate }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "authenticate")
    public JAXBElement<Authenticate> createAuthenticate(Authenticate value) {
        return new JAXBElement<Authenticate>(_Authenticate_QNAME, Authenticate.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetCustomer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "getCustomer")
    public JAXBElement<GetCustomer> createGetCustomer(GetCustomer value) {
        return new JAXBElement<GetCustomer>(_GetCustomer_QNAME, GetCustomer.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UpdateUser }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://APpack/", name = "updateUser")
    public JAXBElement<UpdateUser> createUpdateUser(UpdateUser value) {
        return new JAXBElement<UpdateUser>(_UpdateUser_QNAME, UpdateUser.class, null, value);
    }

}
