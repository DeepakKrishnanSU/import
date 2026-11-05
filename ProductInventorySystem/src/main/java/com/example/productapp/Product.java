package com.example.productapp;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "product")
public class Product {
    @Id
    private int productId;
    private String productName;
    private String category;
    private String brand;
    private String description;
    private double price;
    private int quantity;
    private String supplierName;
    private String manufacturingDate;
    private String expiryDate;

    public Product() {}

    public Product(int productId, String productName, String category, String brand, String description, double price, int quantity, String supplierName, String manufacturingDate, String expiryDate) {
        this.productId = productId;
        this.productName = productName;
        this.category = category;
        this.brand = brand;
        this.description = description;
        this.price = price;
        this.quantity = quantity;
        this.supplierName = supplierName;
        this.manufacturingDate = manufacturingDate;
        this.expiryDate = expiryDate;
    }

    public int getProductId() { return productId; }
    public void setProductId(int productId) { this.productId = productId; }
    public String getProductName() { return productName; }
    public void setProductName(String productName) { this.productName = productName; }
    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }
    public String getBrand() { return brand; }
    public void setBrand(String brand) { this.brand = brand; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
    public String getSupplierName() { return supplierName; }
    public void setSupplierName(String supplierName) { this.supplierName = supplierName; }
    public String getManufacturingDate() { return manufacturingDate; }
    public void setManufacturingDate(String manufacturingDate) { this.manufacturingDate = manufacturingDate; }
    public String getExpiryDate() { return expiryDate; }
    public void setExpiryDate(String expiryDate) { this.expiryDate = expiryDate; }
}