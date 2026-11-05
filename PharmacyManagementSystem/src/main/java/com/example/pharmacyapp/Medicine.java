package com.example.pharmacyapp;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "medicine")
public class Medicine {
    @Id
    private int medicineId;
    private String medicineName;
    private String category;
    private String manufacturer;
    private String batchNumber;
    private double price;
    private int quantity;
    private String manufacturingDate;
    private String expiryDate;
    private String supplierName;

    public Medicine() {}

    public Medicine(int medicineId, String medicineName, String category, String manufacturer, String batchNumber, double price, int quantity, String manufacturingDate, String expiryDate, String supplierName) {
        this.medicineId = medicineId;
        this.medicineName = medicineName;
        this.category = category;
        this.manufacturer = manufacturer;
        this.batchNumber = batchNumber;
        this.price = price;
        this.quantity = quantity;
        this.manufacturingDate = manufacturingDate;
        this.expiryDate = expiryDate;
        this.supplierName = supplierName;
    }

    public int getMedicineId() { return medicineId; }
    public void setMedicineId(int medicineId) { this.medicineId = medicineId; }
    public String getMedicineName() { return medicineName; }
    public void setMedicineName(String medicineName) { this.medicineName = medicineName; }
    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }
    public String getManufacturer() { return manufacturer; }
    public void setManufacturer(String manufacturer) { this.manufacturer = manufacturer; }
    public String getBatchNumber() { return batchNumber; }
    public void setBatchNumber(String batchNumber) { this.batchNumber = batchNumber; }
    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
    public String getManufacturingDate() { return manufacturingDate; }
    public void setManufacturingDate(String manufacturingDate) { this.manufacturingDate = manufacturingDate; }
    public String getExpiryDate() { return expiryDate; }
    public void setExpiryDate(String expiryDate) { this.expiryDate = expiryDate; }
    public String getSupplierName() { return supplierName; }
    public void setSupplierName(String supplierName) { this.supplierName = supplierName; }
}