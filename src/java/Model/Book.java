/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Chuong
 */
public class Book {
    private int id,amount;
    private double price;
    private String name,author, publishingYear;

    public Book() {
    }

    public Book(int id, int amount, double price, String name, String author, String publishingYear) {
        this.id = id;
        this.amount = amount;
        this.price = price;
        this.name = name;
        this.author = author;
        this.publishingYear = publishingYear;
    }

    public int getId() {
        return id;
    }

    public int getAmount() {
        return amount;
    }

    public double getPrice() {
        return price;
    }

    public String getName() {
        return name;
    }

    public String getAuthor() {
        return author;
    }

    public String getPublishingYear() {
        return publishingYear;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setPublishingYear(String publishingYear) {
        this.publishingYear = publishingYear;
    }

    @Override
    public String toString() {
        return "Book{" + "id=" + id + ", amount=" + amount + ", price=" + price + ", name=" + name + ", author=" + author + ", publishingYear=" + publishingYear + '}';
    }
    
    
}
