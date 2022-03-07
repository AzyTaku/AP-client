
package appack;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.8
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "APservice", targetNamespace = "http://APpack/", wsdlLocation = "http://localhost:8080/AP-service/APservice?wsdl")
public class APservice_Service
    extends Service
{

    private final static URL APSERVICE_WSDL_LOCATION;
    private final static WebServiceException APSERVICE_EXCEPTION;
    private final static QName APSERVICE_QNAME = new QName("http://APpack/", "APservice");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8080/AP-service/APservice?wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        APSERVICE_WSDL_LOCATION = url;
        APSERVICE_EXCEPTION = e;
    }

    public APservice_Service() {
        super(__getWsdlLocation(), APSERVICE_QNAME);
    }

    public APservice_Service(WebServiceFeature... features) {
        super(__getWsdlLocation(), APSERVICE_QNAME, features);
    }

    public APservice_Service(URL wsdlLocation) {
        super(wsdlLocation, APSERVICE_QNAME);
    }

    public APservice_Service(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, APSERVICE_QNAME, features);
    }

    public APservice_Service(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public APservice_Service(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns APservice
     */
    @WebEndpoint(name = "APservicePort")
    public APservice getAPservicePort() {
        return super.getPort(new QName("http://APpack/", "APservicePort"), APservice.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns APservice
     */
    @WebEndpoint(name = "APservicePort")
    public APservice getAPservicePort(WebServiceFeature... features) {
        return super.getPort(new QName("http://APpack/", "APservicePort"), APservice.class, features);
    }

    private static URL __getWsdlLocation() {
        if (APSERVICE_EXCEPTION!= null) {
            throw APSERVICE_EXCEPTION;
        }
        return APSERVICE_WSDL_LOCATION;
    }

}
