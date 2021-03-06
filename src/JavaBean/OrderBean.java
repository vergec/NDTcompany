package JavaBean;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

public class OrderBean {
    private int OrderId,companyID,userId,carId,amount;
    private String departure;
    private String destination;
    private String finishtime,deliveryTime;
    private String status;
    private Timestamp time;
    private String availableTime, availableTime1;
    private double itemSize,price;

    public String getFinishtime() {
        return finishtime;
    }

    public void setFinishtime(String finishtime) {
        this.finishtime = finishtime;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getOrderId() {
        return OrderId;
    }

    public void setOrderId(int orderId) {
        this.OrderId = orderId;
    }

    public int getCompanyID() {
        return companyID;
    }

    public void setCompanyID(int companyID) {
        this.companyID = companyID;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getDeliveryTime() {
        return deliveryTime;
    }

    public void setDeliveryTime(String deliveryTime) {
        this.deliveryTime = deliveryTime;
    }

    public String getAvailableTime() {
        return availableTime;
    }

    public void setAvailableTime(String availableTime) {
        this.availableTime = availableTime;
    }

    public String getAvailableTime1() {
        return availableTime1;
    }

    public void setAvailableTime1(String availableTime1) {
        this.availableTime1 = availableTime1;
    }

    public double getItemSize() {
        return itemSize;
    }

    public void setItemSize(double itemSize) {
        this.itemSize = itemSize;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
