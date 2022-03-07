
package appack;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for loginUser complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="loginUser">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="InputUsername" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="InputPassword" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "loginUser", propOrder = {
    "inputUsername",
    "inputPassword"
})
public class LoginUser {

    @XmlElement(name = "InputUsername")
    protected String inputUsername;
    @XmlElement(name = "InputPassword")
    protected String inputPassword;

    /**
     * Gets the value of the inputUsername property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getInputUsername() {
        return inputUsername;
    }

    /**
     * Sets the value of the inputUsername property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setInputUsername(String value) {
        this.inputUsername = value;
    }

    /**
     * Gets the value of the inputPassword property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getInputPassword() {
        return inputPassword;
    }

    /**
     * Sets the value of the inputPassword property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setInputPassword(String value) {
        this.inputPassword = value;
    }

}
