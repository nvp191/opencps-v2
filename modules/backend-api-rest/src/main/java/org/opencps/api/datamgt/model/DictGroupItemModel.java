//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.8-b130911.1802 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2017.09.01 at 11:47:17 AM ICT 
//


package org.opencps.api.datamgt.model;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlText;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="dictItemId" type="{http://www.w3.org/2001/XMLSchema}long"/>
 *         &lt;element name="itemCode" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="itemName" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="itemNameEN" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="itemDescription" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="selected" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "dictItemId",
    "itemCode",
    "itemName",
    "itemNameEN",
    "itemDescription",
    "selected"
})
@XmlRootElement(name = "DictGroupItemModel")
public class DictGroupItemModel {

    protected long dictItemId;
    @XmlSchemaType(name="String")
    protected String itemCode;
    @XmlSchemaType(name="String")
    protected String itemName;
    @XmlSchemaType(name="string")
    protected String itemNameEN;
    protected String itemDescription;
    protected boolean selected;

    /**
     * Gets the value of the dictItemId property.
     * 
     */
    public long getDictItemId() {
        return dictItemId;
    }

    /**
     * Sets the value of the dictItemId property.
     * 
     */
    public void setDictItemId(long value) {
        this.dictItemId = value;
    }

    /**
     * Gets the value of the itemCode property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getItemCode() {
        return itemCode;
    }

    /**
     * Sets the value of the itemCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setItemCode(String value) {
        this.itemCode = value;
    }

    /**
     * Gets the value of the itemName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getItemName() {
        return itemName;
    }

    /**
     * Sets the value of the itemName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setItemName(String value) {
        this.itemName = value;
    }

    /**
     * Gets the value of the itemNameEN property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getItemNameEN() {
        return itemNameEN;
    }

    /**
     * Sets the value of the itemNameEN property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setItemNameEN(String value) {
        this.itemNameEN = value;
    }

    /**
     * Gets the value of the itemDescription property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getItemDescription() {
        return itemDescription;
    }

    /**
     * Sets the value of the itemDescription property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setItemDescription(String value) {
        this.itemDescription = value;
    }

    /**
     * Gets the value of the selected property.
     * 
     */
    public boolean isSelected() {
        return selected;
    }

    /**
     * Sets the value of the selected property.
     * 
     */
    public void setSelected(boolean value) {
        this.selected = value;
    }

}